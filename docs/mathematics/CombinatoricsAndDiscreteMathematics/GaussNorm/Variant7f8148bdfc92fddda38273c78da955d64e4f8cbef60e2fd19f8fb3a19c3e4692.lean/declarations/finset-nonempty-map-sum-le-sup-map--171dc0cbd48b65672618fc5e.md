# Finset.Nonempty.map_sum_le_sup'_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b2dda71-8f12-3558-dc15-cc66426b98f3",
  "kind": "lemma",
  "lexical_name": "Finset.Nonempty.map_sum_le_sup'_map",
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
  "slug": "finset-nonempty-map-sum-le-sup-map--171dc0cbd48b65672618fc5e",
  "source": {
    "blob": "accab037afb8e59efa45fcadd8f6bcff88cdf9a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:171dc0cbd48b65672618fc5ee35626f00bad98f496074b663834f2d301936059",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b2dda71-8f12-3558-dc15-cc66426b98f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Finset.Nonempty.map_sum_le_sup'_map
    {α S : Type*} [LinearOrder S] [AddCommMonoid α] (g : α → S)
    {ι : Type*} {s : Finset ι} (hs : s.Nonempty) (f : ι → α)
    (na : ∀ a b, g (a + b) ≤ max (g a) (g b)) :
    g (∑ i ∈ s, f i) ≤ s.sup' hs fun x ↦ g (f x) := by
  simp only [Finset.le_sup'_iff]
  induction hs using Finset.Nonempty.cons_induction with
  | singleton j => simp only [Finset.mem_singleton, Finset.sum_singleton, exists_eq_left, le_refl]
  | cons j s hj _ IH =>
      simp only [Finset.sum_cons, Finset.mem_cons, exists_eq_or_imp]
      refine (le_total (g (∑ i ∈ s, f i)) (g (f j))).imp ?_ ?_ <;> intro h
      · exact (na _ _).trans (max_eq_left h).le
      · exact ⟨_, IH.choose_spec.left, (na _ _).trans <|
          ((max_eq_right h).le.trans IH.choose_spec.right)⟩

variable [DecidableEq σ] (f g : MvPowerSeries σ R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussNorm/Variant7f8148bdfc92fddda38273c78da955d64e4f8cbef60e2fd19f8fb3a19c3e4692.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accab037afb8e59efa45fcadd8f6bcff88cdf9a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
