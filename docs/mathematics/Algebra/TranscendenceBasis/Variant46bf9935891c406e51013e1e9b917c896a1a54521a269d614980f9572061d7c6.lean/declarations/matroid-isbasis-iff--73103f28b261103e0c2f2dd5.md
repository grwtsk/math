# matroid_isBasis_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e43bcc0-2ee3-8899-8a25-4eef77fdc0e0",
  "kind": "theorem",
  "lexical_name": "matroid_isBasis_iff",
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
  "slug": "matroid-isbasis-iff--73103f28b261103e0c2f2dd5",
  "source": {
    "blob": "28bab1de2f9509d8e20552883cc6faf3014bf1f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 316,
    "path": "GRWTSK/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73103f28b261103e0c2f2dd56bd5652da73d2dad8d16339caf5657527f4c584a",
  "verification": {
    "reference": "docs/verification/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e43bcc0-2ee3-8899-8a25-4eef77fdc0e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matroid_isBasis_iff [IsDomain A] {s t : Set A} : (matroid R A).IsBasis s t ↔
    AlgebraicIndepOn R id s ∧ s ⊆ t ∧ ∀ a ∈ t, IsAlgebraic (adjoin R s) a := by
  rw [Matroid.IsBasis, maximal_iff_forall_insert fun s t h hst ↦ ⟨h.1.subset hst, hst.trans h.2⟩]
  simp_rw [matroid_indep_iff, ← and_assoc, matroid_e, subset_univ, and_true]
  exact and_congr_right fun h ↦ ⟨fun max a ha ↦ of_not_not fun tr ↦ max _
    (fun ha ↦ tr (isAlgebraic_algebraMap (⟨a, subset_adjoin ha⟩ : adjoin R s)))
      ⟨.insert h.1 (by rwa [image_id]), insert_subset ha h.2⟩,
    fun alg a ha h ↦ ((AlgebraicIndepOn.insert_iff ha).mp h.1).2 <| by
      rw [image_id]; exact alg _ <| h.2 <| mem_insert ..⟩

open Subsingleton in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TranscendenceBasis/Variant46bf9935891c406e51013e1e9b917c896a1a54521a269d614980f9572061d7c6.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28bab1de2f9509d8e20552883cc6faf3014bf1f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
