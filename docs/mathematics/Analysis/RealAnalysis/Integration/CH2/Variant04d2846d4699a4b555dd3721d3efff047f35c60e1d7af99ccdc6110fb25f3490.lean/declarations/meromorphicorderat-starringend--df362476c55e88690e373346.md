# meromorphicOrderAt_starRingEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac107b52-d525-3c00-a3ea-4efa083a1710",
  "kind": "lemma",
  "lexical_name": "meromorphicOrderAt_starRingEnd",
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
  "slug": "meromorphicorderat-starringend--df362476c55e88690e373346",
  "source": {
    "blob": "46d07824909f05f0ffe5b70a4f74a8f7078179e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2018,
    "line": 1983,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df362476c55e88690e3733464f3b3e6c617fe4bca67202170820124c01b2432a",
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

Occurrence: `result:ac107b52-d525-3c00-a3ea-4efa083a1710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1983–2018.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma meromorphicOrderAt_starRingEnd {F : ℂ → ℂ} {z : ℂ}
    (hF_symm : ConjSymm F ∨ ConjAntisymm F) :
    meromorphicOrderAt F z = meromorphicOrderAt F (starRingEnd ℂ z) := by
  rcases hF_symm with hF | hF
  · have hreflect : conj_reflect F =ᶠ[nhdsWithin (starRingEnd ℂ z) {(starRingEnd ℂ z)}ᶜ] F := by
      apply Filter.Eventually.of_forall
      intro w
      dsimp [conj_reflect]
      simpa [starRingEnd_self_apply] using congrArg (starRingEnd ℂ) (hF w)
    calc
      meromorphicOrderAt F z = meromorphicOrderAt (conj_reflect F) (starRingEnd ℂ z) := by
        symm
        exact meromorphicOrderAt_conj_reflect (G := F) (a := z)
      _ = meromorphicOrderAt F (starRingEnd ℂ z) := meromorphicOrderAt_congr hreflect
  · have hreflect_neg : conj_reflect F =ᶠ[nhdsWithin (starRingEnd ℂ z) {(starRingEnd ℂ z)}ᶜ] -F := by
      apply Filter.Eventually.of_forall
      intro w
      dsimp [conj_reflect]
      simpa [starRingEnd_self_apply] using congrArg (starRingEnd ℂ) (hF w)
    have h_neg_order :
        meromorphicOrderAt (-F) (starRingEnd ℂ z) = meromorphicOrderAt F (starRingEnd ℂ z) := by
      have hneg_eq : -F = (fun _ : ℂ ↦ (-1 : ℂ)) * F := by
        ext w
        simp
      rw [hneg_eq]
      exact meromorphicOrderAt_mul_of_ne_zero
        (f := F) (g := fun _ : ℂ ↦ (-1 : ℂ))
        (show AnalyticAt ℂ (fun _ : ℂ ↦ (-1 : ℂ)) (starRingEnd ℂ z) from analyticAt_const)
        (by simp)
    calc
      meromorphicOrderAt F z = meromorphicOrderAt (conj_reflect F) (starRingEnd ℂ z) := by
        symm
        exact meromorphicOrderAt_conj_reflect (G := F) (a := z)
      _ = meromorphicOrderAt (-F) (starRingEnd ℂ z) := meromorphicOrderAt_congr hreflect_neg
      _ = meromorphicOrderAt F (starRingEnd ℂ z) := h_neg_order

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CH2/Variant04d2846d4699a4b555dd3721d3efff047f35c60e1d7af99ccdc6110fb25f3490.lean#L1983).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46d07824909f05f0ffe5b70a4f74a8f7078179e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
