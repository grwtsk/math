# MulLeftReflectLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ab266f81b39a73f9a5010d5ee9c539de7a2976405962cbfc2f0251acbc3f64b",
  "kind": "abbrev",
  "lexical_name": "MulLeftReflectLE",
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
  "slug": "mulleftreflectle--8033ef416b879cd475636d3c",
  "source": {
    "blob": "20d3e4b937dd69ef758ebd59a52e4ce91ca257e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 235,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant25cfa9b8e01bd3b8a6a9a327e67e722ab7b067b921993d682b0d031f46b2ad09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8033ef416b879cd475636d3c345ec65c1dc0e7d3199d0be8af7571144625af6b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant25cfa9b8e01bd3b8a6a9a327e67e722ab7b067b921993d682b0d031f46b2ad09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ab266f81b39a73f9a5010d5ee9c539de7a2976405962cbfc2f0251acbc3f64b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev MulLeftReflectLE [Mul M] [LE M] : Prop :=
  ContravariantClass M M (· * ·) (· ≤ ·)

/-- Typeclass for reverse monotonicity of multiplication on the right,
namely `a₁ * b ≤ a₂ * b → a₁ ≤ a₂`.

You should usually not use this very granular typeclass directly, but rather a typeclass like
`OrderedCancelCommMonoid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant25cfa9b8e01bd3b8a6a9a327e67e722ab7b067b921993d682b0d031f46b2ad09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant25cfa9b8e01bd3b8a6a9a327e67e722ab7b067b921993d682b0d031f46b2ad09.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20d3e4b937dd69ef758ebd59a52e4ce91ca257e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
