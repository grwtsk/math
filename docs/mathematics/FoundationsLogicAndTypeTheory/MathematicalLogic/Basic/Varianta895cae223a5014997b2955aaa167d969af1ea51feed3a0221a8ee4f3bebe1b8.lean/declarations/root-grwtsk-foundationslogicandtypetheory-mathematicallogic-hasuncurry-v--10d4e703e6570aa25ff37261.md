# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.HasUncurry.Variant19b08924d3aeaa98ab53e63642bf70c259291e9ce68dab5836008bcdb9bde595.Bool.involutive_not

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d99012c9-783f-83dc-2324-c776f22bc951",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.HasUncurry.Variant19b08924d3aeaa98ab53e63642bf70c259291e9ce68dab5836008bcdb9bde595.Bool.involutive_not",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-hasuncurry-v--10d4e703e6570aa25ff37261",
  "source": {
    "blob": "44f0254e4f6168a3f0d925f21a60deffae78408f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 901,
    "line": 894,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta895cae223a5014997b2955aaa167d969af1ea51feed3a0221a8ee4f3bebe1b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10d4e703e6570aa25ff37261a2ca2ea217f6729044efd9008ec9043967c4e107",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta895cae223a5014997b2955aaa167d969af1ea51feed3a0221a8ee4f3bebe1b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d99012c9-783f-83dc-2324-c776f22bc951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–901.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.HasUncurry.Variant19b08924d3aeaa98ab53e63642bf70c259291e9ce68dab5836008bcdb9bde595.Bool.involutive_not : Involutive not :=
  Bool.not_not

namespace Involutive

variable {α : Sort u} {f : α → α} (h : Involutive f)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta895cae223a5014997b2955aaa167d969af1ea51feed3a0221a8ee4f3bebe1b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta895cae223a5014997b2955aaa167d969af1ea51feed3a0221a8ee4f3bebe1b8.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f0254e4f6168a3f0d925f21a60deffae78408f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
