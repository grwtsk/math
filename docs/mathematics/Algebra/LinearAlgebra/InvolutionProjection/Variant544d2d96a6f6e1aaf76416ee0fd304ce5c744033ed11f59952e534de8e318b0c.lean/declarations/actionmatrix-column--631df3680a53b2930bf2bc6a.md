# actionMatrix_column

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:639ff07c-5e38-1ab7-3b2f-cd7c8964f0ba",
  "kind": "theorem",
  "lexical_name": "actionMatrix_column",
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
  "slug": "actionmatrix-column--631df3680a53b2930bf2bc6a",
  "source": {
    "blob": "f72e2e2ede90b344b33000883be057c7bf5724a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 88,
    "path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:631df3680a53b2930bf2bc6ac1e1034b7991931c14a09ad5b7d145a3c78f5bfc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:639ff07c-5e38-1ab7-3b2f-cd7c8964f0ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actionMatrix_column (i j : Fin P.width) :
    P.actionMatrix i j = true ↔
      i = P.encode (P.source.act (P.encode.symm j)) := by
  rw [P.action_spec]
  exact eq_comm

/-- Entry formula independent of the intermediate Boolean representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant544d2d96a6f6e1aaf76416ee0fd304ce5c744033ed11f59952e534de8e318b0c.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f72e2e2ede90b344b33000883be057c7bf5724a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
