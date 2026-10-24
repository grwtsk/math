# sieve₁'_toPreOneHypercover_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40445eeb605b3ea9ff344dfd2758e1e5f43192df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d492cde1-9344-315c-e323-41a55df491e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a11dea76-ec6e-52dc-ab43-d39408c09ce3",
  "kind": "lemma",
  "lexical_name": "sieve₁'_toPreOneHypercover_eq_top",
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
  "slug": "sieve-topreonehypercover-eq-top--230138bdf45121a49bcfb8ba",
  "source": {
    "blob": "40445eeb605b3ea9ff344dfd2758e1e5f43192df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1134,
    "line": 1122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:230138bdf45121a49bcfb8ba1b61791a81b6a0b5cc9236e8884fea31cbb32b4f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a11dea76-ec6e-52dc-ab43-d39408c09ce3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1122–1134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sieve₁'_toPreOneHypercover_eq_top {S : C} (E : PreZeroHypercover S) [E.HasPullbacks]
    (i j : E.I₀) :
    E.toPreOneHypercover.sieve₁' i j = ⊤ := by
  rw [eq_top_iff]
  intro Y f _
  refine ⟨pullback (E.f i) (E.f j), f, 𝟙 _, ?_, by simp⟩
  refine Presieve.ofArrows.mk' ⟨⟩ rfl ?_
  apply pullback.hom_ext <;> simp [PreOneHypercover.toPullback]

set_option backward.isDefEq.respectTransparency.types false in
/-- If the pairwise pullbacks exist, this is the pre-`1`-hypercover where the covers
by the pullbacks are given by the pullbacks themselves. -/
@[simps! toPreOneHypercover]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Variant5a377be06d4540547a67e4138f689af01cb439091c60a518efd47eb49f5c484c.lean#L1122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40445eeb605b3ea9ff344dfd2758e1e5f43192df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
