# upperClosure_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b2c88a6-faf6-7b00-1f3e-a87c787f6ec4",
  "kind": "theorem",
  "lexical_name": "upperClosure_one",
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
  "slug": "upperclosure-one--b0e90432f9de4f247b3a727f",
  "source": {
    "blob": "2d4a280d8a2495c0dbd6bee48380e450285c9e3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 222,
    "path": "GRWTSK/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0e90432f9de4f247b3a727f0e5a939914d3d99cdba59bea264e8235c4f0e84e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b2c88a6-faf6-7b00-1f3e-a87c787f6ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperClosure_one : upperClosure (1 : Set α) = 1 :=
  upperClosure_singleton _

omit [IsOrderedMonoid α] in
@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/UpperLower/Variantd405a49c29359f38feca93152905e0e1c8ba8ad8427958c0788fdbf5d58ee269.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4a280d8a2495c0dbd6bee48380e450285c9e3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
