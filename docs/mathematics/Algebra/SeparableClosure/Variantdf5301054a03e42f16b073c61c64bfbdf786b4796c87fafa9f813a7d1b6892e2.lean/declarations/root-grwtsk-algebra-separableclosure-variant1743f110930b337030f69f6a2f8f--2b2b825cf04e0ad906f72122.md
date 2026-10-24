# _root_.GRWTSK.Algebra.SeparableClosure.Variant1743f110930b337030f69f6a2f8fa1b070581cbec700ceb526602f9b2f00d65c.Field.insepDegree_le_of_left_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf05638d-afdf-818e-7573-69bca24277e6",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.SeparableClosure.Variant1743f110930b337030f69f6a2f8fa1b070581cbec700ceb526602f9b2f00d65c.Field.insepDegree_le_of_left_le",
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
  "slug": "root-grwtsk-algebra-separableclosure-variant1743f110930b337030f69f6a2f8f--2b2b825cf04e0ad906f72122",
  "source": {
    "blob": "b05d047cba5cc6f2d411584d84e1251d2c4d24a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 412,
    "path": "GRWTSK/Algebra/SeparableClosure/Variantdf5301054a03e42f16b073c61c64bfbdf786b4796c87fafa9f813a7d1b6892e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b2b825cf04e0ad906f72122576b4c8f7e1fad2030b4b245840459d68922cf6e",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableClosure/Variantdf5301054a03e42f16b073c61c64bfbdf786b4796c87fafa9f813a7d1b6892e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf05638d-afdf-818e-7573-69bca24277e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.SeparableClosure.Variant1743f110930b337030f69f6a2f8fa1b070581cbec700ceb526602f9b2f00d65c.Field.insepDegree_le_of_left_le {E₁ E₂ : IntermediateField F K} (H : E₁ ≤ E₂) :
    insepDegree E₂ K ≤ insepDegree E₁ K := by
  letI := (IntermediateField.inclusion H).toAlgebra
  have : IsScalarTower E₁ E₂ K := .of_algebraMap_eq' rfl
  exact insepDegree_top_le_insepDegree_of_isScalarTower _ _ _

variable (F) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableClosure/Variantdf5301054a03e42f16b073c61c64bfbdf786b4796c87fafa9f813a7d1b6892e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableClosure/Variantdf5301054a03e42f16b073c61c64bfbdf786b4796c87fafa9f813a7d1b6892e2.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b05d047cba5cc6f2d411584d84e1251d2c4d24a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
