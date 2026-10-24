# RefreshToken.updateLazy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6b1b0814c5bc88e1dd9cc56339c7d331817ad54ed6b94425de3ba57cea10a3c",
  "kind": "def",
  "lexical_name": "RefreshToken.updateLazy",
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
  "slug": "refreshtoken-updatelazy--b7159dc8fbc1affeda6a69d6",
  "source": {
    "blob": "3577e36d59bb687aad750d84c6d81cd159356f32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 197,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variant1dff6c2bf720633fb9e31510dde451fc324132fa1fda1a0c0847bd1adffb1207.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7159dc8fbc1affeda6a69d6bc4cd228b7907baf0b26d9e3e2672261cfe5b689",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variant1dff6c2bf720633fb9e31510dde451fc324132fa1fda1a0c0847bd1adffb1207.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6b1b0814c5bc88e1dd9cc56339c7d331817ad54ed6b94425de3ba57cea10a3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RefreshToken.updateLazy (token : RefreshToken) (html : Thunk Html) : BaseIO Unit := do
  let { state, promise, .. } := token
  let newPromise ← IO.Promise.new
  -- `state` is the ref that guards the critical region.
  let oldPromise ← state.atomically do
    let st ← get
    let oldPromise ← promise.swap newPromise
    set {
      curr := html
      idx := st.idx + 1
      next := newPromise.result?
      : RefreshState
    }
    pure oldPromise
  oldPromise.resolve ()

/-- Update the current HTML tree to be `html`. See also `updateLazy`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variant1dff6c2bf720633fb9e31510dde451fc324132fa1fda1a0c0847bd1adffb1207.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variant1dff6c2bf720633fb9e31510dde451fc324132fa1fda1a0c0847bd1adffb1207.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3577e36d59bb687aad750d84c6d81cd159356f32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
