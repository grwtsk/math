# NonUnitalStarAlgHom.map_cfcₙ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e7bfd83c4905a1bc84df9f52d74ed2b5b78e002",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 438,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a19b76cd-07b6-fde0-d562-618b53323e78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c244b213-23c7-3a50-b069-83d99f439179",
  "kind": "lemma",
  "lexical_name": "NonUnitalStarAlgHom.map_cfcₙ",
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
  "slug": "nonunitalstaralghom-map-cfc--c56b4ede9ffca2e8d2cbfa3c",
  "source": {
    "blob": "7e7bfd83c4905a1bc84df9f52d74ed2b5b78e002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 438,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c56b4ede9ffca2e8d2cbfa3c5ab0728aba662e3a79994e0e7dfde93560f270eb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c244b213-23c7-3a50-b069-83d99f439179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NonUnitalStarAlgHom.map_cfcₙ (φ : A →⋆ₙₐ[S] B) (f : R → R) (a : A)
    (hf : ContinuousOn f (quasispectrum R a) := by cfc_cont_tac)
    (hf₀ : f 0 = 0 := by cfc_zero_tac) (hφ : Continuous φ := by fun_prop) (ha : p a := by cfc_tac)
    (hφa : q (φ a) := by cfc_tac) : φ (cfcₙ f a) = cfcₙ f (φ a) :=
  NonUnitalStarAlgHomClass.map_cfcₙ φ f a

end NonUnitalStarAlgHom

section StarAlgHom

open scoped ContinuousFunctionalCalculus

variable {F R S A B : Type*} {p : A → Prop} {q : B → Prop}
  [CommSemiring R] [StarRing R] [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R]
  [Ring A] [StarRing A] [TopologicalSpace A] [Algebra R A]
  [Ring B] [StarRing B] [TopologicalSpace B] [Algebra R B]
  [CommSemiring S] [Algebra R S] [Algebra S A] [Algebra S B] [IsScalarTower R S A]
  [IsScalarTower R S B] [ContinuousFunctionalCalculus R A p] [ContinuousFunctionalCalculus R B q]
  [ContinuousMap.UniqueHom R B] [FunLike F A B] [AlgHomClass F S A B]
  [StarHomClass F A B]

set_option backward.isDefEq.respectTransparency false in
include S in
/-- Star algebra homomorphisms commute with the continuous functional calculus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variant20952feca147892d0bd419e5a7c30db0b75f005269157ba40beb764c1669af87.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e7bfd83c4905a1bc84df9f52d74ed2b5b78e002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
