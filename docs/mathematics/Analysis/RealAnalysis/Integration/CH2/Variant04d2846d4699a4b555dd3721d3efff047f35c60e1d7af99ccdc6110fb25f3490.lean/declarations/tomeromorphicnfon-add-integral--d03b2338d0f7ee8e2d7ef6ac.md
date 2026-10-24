# toMeromorphicNFOn_add_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efa9577b-1ab4-0b7e-0609-4cc0bffd1e3a",
  "kind": "lemma",
  "lexical_name": "toMeromorphicNFOn_add_integral",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "tomeromorphicnfon-add-integral--d03b2338d0f7ee8e2d7ef6ac",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 990,
    "line": 943,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d03b2338d0f7ee8e2d7ef6ac5c4e199866d14c1bde5bac8a051dfd87b0fe61a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efa9577b-1ab4-0b7e-0609-4cc0bffd1e3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 943–990.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma toMeromorphicNFOn_add_integral {f : ℂ → ℂ} {z w : ℂ}
    (f_mero : MeromorphicOn f (Rectangle z w))
    (f_no_poles_boundary : Disjoint (RectangleBorder z w) {z | meromorphicOrderAt f z < 0})
    (f_poles_finite : (Rectangle z w ∩ {z | meromorphicOrderAt f z < 0}).Finite)
    (f_simple_poles : HasSimplePolesOn f (Rectangle z w)) :
    RectangleIntegral' (toMeromorphicNFOn f (Rectangle z w)) z w =
      RectangleIntegral' (toMeromorphicNFOn (toMeromorphicNFOn f (Rectangle z w) -
        fun s ↦ ∑ p ∈ f_poles_finite.toFinset, residue (toMeromorphicNFOn f (Rectangle z w)) p / (s - p)) (Rectangle z w)) z w +
      RectangleIntegral' (fun s ↦ ∑ p ∈ f_poles_finite.toFinset, residue (toMeromorphicNFOn f (Rectangle z w)) p / (s - p)) z w := by
  let R : Set ℂ := Rectangle z w
  let poles : Set ℂ := R ∩ {u | meromorphicOrderAt f u < 0}
  let polesFin : Finset ℂ := f_poles_finite.toFinset
  let fNF : ℂ → ℂ := toMeromorphicNFOn f R
  let principalPart : ℂ → ℂ := fun s ↦ ∑ p ∈ polesFin, residue fNF p / (s - p)
  let holoPart : ℂ → ℂ := toMeromorphicNFOn (fNF - principalPart) R
  have h_holoPart_border : RectangleBorderIntegrable holoPart z w :=
    (holoPart_holomorphicOn f_mero f_simple_poles f_poles_finite).rectangleBorderIntegrable
  have h_fNF_eq :
      Set.EqOn fNF (holoPart + principalPart) (RectangleBorder z w) := by
    intro s hs
    have hsR : s ∈ R := rectangleBorder_subset_rectangle z w hs
    have hsnp : s ∉ poles := fun hsp => Set.disjoint_right.mp f_no_poles_boundary hsp.2 hs
    have hraw_analytic : AnalyticAt ℂ (fNF - principalPart) s := by
      have h_fNF_nonneg : 0 ≤ meromorphicOrderAt fNF s := by
        rw [show meromorphicOrderAt fNF s = meromorphicOrderAt f s by
          simpa [fNF] using
            (meromorphicOrderAt_toMeromorphicNFOn (f := f) (U := R) f_mero hsR)]
        exact le_of_not_gt fun hsneg => hsnp ⟨hsR, hsneg⟩
      exact sub_principalPart_analyticAt_of_not_mem_poles
        (by simpa [fNF] using meromorphicNFOn_toMeromorphicNFOn (f := f) (U := R) hsR)
        (fun h => hsnp (by simpa [polesFin, poles] using h))
        h_fNF_nonneg
    have hs_eq : holoPart s = (fNF - principalPart) s := by
      rw [show holoPart = toMeromorphicNFOn (fNF - principalPart) R by rfl]
      have h_fNF_mero : MeromorphicOn fNF R := by
        simpa [fNF] using (meromorphicNFOn_toMeromorphicNFOn (f := f) (U := R)).meromorphicOn
      have hf_sub_mero : MeromorphicOn (fNF - principalPart) R :=
        h_fNF_mero.sub principalPart_meromorphicOn
      rw [toMeromorphicNFOn_eq_toMeromorphicNFAt (f := fNF - principalPart) (U := R) hf_sub_mero hsR]
      exact congr_fun (toMeromorphicNFAt_eq_self.2 hraw_analytic.meromorphicNFAt) s
    calc
      fNF s = (fNF - principalPart) s + principalPart s := by simp
      _ = holoPart s + principalPart s := by rw [← hs_eq]
  rw [RectangleIntegral'_congr h_fNF_eq, RectangleIntegral',
    RectangleBorderIntegrable.add h_holoPart_border
      (principalPart_borderIntegrable f_no_poles_boundary f_poles_finite), smul_add]

/-- The Residue Theorem on a rectangle for functions with simple poles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L943).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
