# smulMonoidWithZeroHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9428d0d6651caaae1fec02baf42c316a7db265dabe35b484bcc2281a800e7434",
  "kind": "def",
  "lexical_name": "smulMonoidWithZeroHom",
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
  "slug": "smulmonoidwithzerohom--a665328258b85966d680ac68",
  "source": {
    "blob": "e95136dff714295d5209d69871312fb8f2a98281",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 94,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a665328258b85966d680ac6884055d7ac84c45b0b5ba1b70bb614f62881901d7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9428d0d6651caaae1fec02baf42c316a7db265dabe35b484bcc2281a800e7434`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smulMonoidWithZeroHom [MonoidWithZero M₀] [MulZeroOneClass N₀] [MulActionWithZero M₀ N₀]
    [IsScalarTower M₀ N₀ N₀] [SMulCommClass M₀ N₀ N₀] : M₀ × N₀ →*₀ N₀ :=
  { smulMonoidHom with map_zero' := smul_zero _ }

namespace AddAut

/-- The tautological action by `AddAut A` on `A`.

This generalizes `Function.End.applyMulAction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant536da636e1b48ae512915ba6decdc954f315640f4c2f7b88a4358c8128033d6f.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95136dff714295d5209d69871312fb8f2a98281` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
