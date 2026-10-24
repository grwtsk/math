# applyExactGuardedByteEdit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50428ab0fbaefffe1f0c6486f3f22be5062d103a3d19bfa9774c23605467da6c",
  "kind": "def",
  "lexical_name": "applyExactGuardedByteEdit",
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
  "slug": "applyexactguardedbyteedit--195ffce2e7327028c2616903",
  "source": {
    "blob": "acd86c2a40dace23b2fb369218e1accf83efe7d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 206,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operation/Variant385e9b18d8d7122158d4e01b36349003818a13dd0f8565a6ecdb0a40c307ae38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:195ffce2e7327028c26169038ed5006ddb4fabff4b8962e5877cba52fe6428f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operation/Variant385e9b18d8d7122158d4e01b36349003818a13dd0f8565a6ecdb0a40c307ae38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50428ab0fbaefffe1f0c6486f3f22be5062d103a3d19bfa9774c23605467da6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def applyExactGuardedByteEdit
    (observedFileHash observedBeforeByteHash : Hash256)
    (source : CanonicalBytes) (edit : ExactGuardedByteEdit) : Option CanonicalBytes :=
  if observedFileHash = edit.expectedFileHash ∧
      observedBeforeByteHash = edit.expectedBeforeByteHash ∧
      edit.expectedRange.endByte ≤ source.length ∧
      sourceSlice source edit.expectedRange = edit.beforeBytes then
    some (replaceByteRange source edit.expectedRange edit.afterBytes)
  else
    none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operation/Variant385e9b18d8d7122158d4e01b36349003818a13dd0f8565a6ecdb0a40c307ae38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operation/Variant385e9b18d8d7122158d4e01b36349003818a13dd0f8565a6ecdb0a40c307ae38.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acd86c2a40dace23b2fb369218e1accf83efe7d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
