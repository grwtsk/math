# mapCommGrpIdIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:863c297fef3a7ff85138e6900c457b24024359b511df6356e66bccfaa9f5b8d4",
  "kind": "def",
  "lexical_name": "mapCommGrpIdIso",
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
  "slug": "mapcommgrpidiso--5ec5b2e3858e118dc9a2e9c2",
  "source": {
    "blob": "6f621fd493017d0c531f6d8a179036531cd74929",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 184,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ec5b2e3858e118dc9a2e9c270e806acf27b00f86a91f1617915b2b800636e2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:863c297fef3a7ff85138e6900c457b24024359b511df6356e66bccfaa9f5b8d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapCommGrpIdIso : mapCommGrp (𝟭 C) ≅ 𝟭 (CommGrp_ C) :=
  NatIso.ofComponents (fun X ↦ CommGrp_.mkIso (.refl _) (by simp [ε_of_cartesianMonoidalCategory])
    (by simp [μ_of_cartesianMonoidalCategory]))

/-- The composition functor is also the composition on commutative group objects. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f621fd493017d0c531f6d8a179036531cd74929` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
