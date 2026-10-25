# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoeMulHom.Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.MulEquiv.withOneCongr_refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10c89f29-39eb-ed93-d22b-4d18d6fbb816",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoeMulHom.Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.MulEquiv.withOneCongr_refl",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-coemulhom-va--efe6d223e1391895d11e5d0c",
  "source": {
    "blob": "ea6eb3ec9a9d521054be8c75bef1ccf44eb2a554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efe6d223e1391895d11e5d0c9c5ad90a1c3e5f2c1428f960ef6772ce7b179887",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10c89f29-39eb-ed93-d22b-4d18d6fbb816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CoeMulHom.Variantabe5a08c1a5ba7f834f389779b4316dc6e195d169ca9a0cab3d71e0f25af54ef.MulEquiv.withOneCongr_refl : (MulEquiv.refl α).withOneCongr = MulEquiv.refl _ :=
  MulEquiv.toMonoidHom_injective map_id
#align mul_equiv.with_one_congr_refl MulEquiv.withOneCongr_refl

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant77ef24392067a4cd741e90faefd3b293be83436e0eb653d9d8477a80ec541d57.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea6eb3ec9a9d521054be8c75bef1ccf44eb2a554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
