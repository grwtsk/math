# codeword_error_invisible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16c8ccbd-8e15-6ec7-4e85-f48c95f0af00",
  "kind": "theorem",
  "lexical_name": "codeword_error_invisible",
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
  "slug": "codeword-error-invisible--236da31d94f8ea6bccd18765",
  "source": {
    "blob": "47590da95970d55ac5e2b49a24660ff0611083ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 132,
    "path": "GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:236da31d94f8ea6bccd187655e7eb448a61bf87b253514d2f80af56716a10636",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16c8ccbd-8e15-6ec7-4e85-f48c95f0af00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem codeword_error_invisible (code : Code 𝕜 X Y) (syndrome : Y →L[𝕜] W)
    (annihilates : syndrome.comp code.encode = 0) (x : X) :
    syndrome (code.encode x) = 0 := by
  simpa using congrArg (fun map : X →L[𝕜] W => map x) annihilates

/-- Exact decomposition of the reconstructed source error into one aggregate seam and
all child interpolation errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47590da95970d55ac5e2b49a24660ff0611083ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
