# does_not_prove_analyticContraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15478fab-341d-f32a-2e3c-ffb2b0d39bdd",
  "kind": "theorem",
  "lexical_name": "does_not_prove_analyticContraction",
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
  "slug": "does-not-prove-analyticcontraction--d72730bcbbd7123a3b529f2f",
  "source": {
    "blob": "ea599239c79a6aa763990712170c5de2d866e056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 906,
    "line": 900,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d72730bcbbd7123a3b529f2f8c98257c27476c950809e346eeb775fb69b630a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15478fab-341d-f32a-2e3c-ffb2b0d39bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 900–906.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem does_not_prove_analyticContraction
    {channelCount rows columns eventCapacity : Nat}
    (stream : Contract channelCount rows columns eventCapacity) :
    ¬ ProvesAnalyticContraction stream := by
  simp [ProvesAnalyticContraction]

end Surface.Core.SharedBinaryMatrixStream
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variantadf14c06210058540baf7f05044a2f63b711544fd66da35b9c262db350b03362.lean#L900).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea599239c79a6aa763990712170c5de2d866e056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
