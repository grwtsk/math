# arrayBackedQuantizer_indistinguishable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bdb7722-4f61-77cb-f073-ffcfeeca4ccc",
  "kind": "theorem",
  "lexical_name": "arrayBackedQuantizer_indistinguishable_iff",
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
  "slug": "arraybackedquantizer-indistinguishable-iff--c35e769f5ad9c4bae047b572",
  "source": {
    "blob": "887d250176af1cbf85eeeeb8f16297982b14132d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c35e769f5ad9c4bae047b57268206694af6a26aa21b13277647dfcf934a8e5f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bdb7722-4f61-77cb-f073-ffcfeeca4ccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arrayBackedQuantizer_indistinguishable_iff
    {Cfg : Type u} {m n : Nat}
    (encodeArrayBacked : Cfg → BitMatrix.ArrayBacked m n)
    (left right : Cfg) :
    (arrayBackedQuantizer encodeArrayBacked).Indistinguishable left right ↔
      (encodeArrayBacked left).toMatrix = (encodeArrayBacked right).toMatrix :=
  Iff.rfl

/-- No full executable transition refinement is submitted by this adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ExecutableRefinement/Varianta1a15594fbeae761c0ab2de4657f7213a6f29e16c32737b80ffaa8a314f4c2c8.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `887d250176af1cbf85eeeeb8f16297982b14132d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
