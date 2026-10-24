# _root_.GRWTSK.Algebra.GroupTheory.AddActionHom.Variantd9ab767fdbc9d5463ee241e83400730c6813e79b56abaf4e5972a1ef5843896b.IsScalarTower.smulHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e4ccf63-26ac-8496-42e5-c8586ebda54e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.AddActionHom.Variantd9ab767fdbc9d5463ee241e83400730c6813e79b56abaf4e5972a1ef5843896b.IsScalarTower.smulHomClass",
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
  "slug": "root-grwtsk-algebra-grouptheory-addactionhom-variantd9ab767fdbc9d5463ee2--4d79a277558b6f6ae8aa0dfb",
  "source": {
    "blob": "85d6a80071c9a60726fbc6f38f37756eb6a8d136",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 195,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d79a277558b6f6ae8aa0dfb73e8a08577d0be07dc1c3c200fc487e9f3c43d11",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e4ccf63-26ac-8496-42e5-c8586ebda54e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.AddActionHom.Variantd9ab767fdbc9d5463ee241e83400730c6813e79b56abaf4e5972a1ef5843896b.IsScalarTower.smulHomClass [MulOneClass X] [SMul X Y] [IsScalarTower M' X Y]
    [MulActionHomClass F X X Y] : MulActionHomClass F M' X Y where
  map_smulₛₗ f m x := by
    rw [← mul_one (m • x), ← smul_eq_mul, map_smul, smul_assoc, ← map_smul,
      smul_eq_mul, mul_one, id_eq]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Varianta7b90eff7b1a2a8078e4a318c6f0aa877bf1cbbb4dfa19f427f6f2f8b11ba48d.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85d6a80071c9a60726fbc6f38f37756eb6a8d136` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
