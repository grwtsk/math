# encodeSparseVector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9cd3b77906afc32dfd11511827e51b622c3a68afe8502a81b4d728de61dad03",
  "kind": "def",
  "lexical_name": "encodeSparseVector",
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
  "slug": "encodesparsevector--0292b3869c47a241a0ec742b",
  "source": {
    "blob": "2a430afb0a6b8588b6d59739e2a0deb5402ed498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 484,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0292b3869c47a241a0ec742b4bcc22ab112576ec39198161484d81e69e93d6e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9cd3b77906afc32dfd11511827e51b622c3a68afe8502a81b4d728de61dad03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def encodeSparseVector (vector : SparseVector) : Option (List UInt8) := do
  if _valid : vector.Valid then pure () else none
  let dimension ← encodeNatChecked 4 vector.dimension
  let count ← encodeNatChecked 4 vector.entries.length
  let entries ← vector.entries.mapM fun entry => do
    pure ((← encodeNatChecked 4 entry.index) ++ (← encodeComplex entry.value))
  pure (dimension ++ count ++ entries.flatten)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a430afb0a6b8588b6d59739e2a0deb5402ed498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
