# Testable.runSuiteAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a855a649a4f4619139c234a804537459250e1c3498b76ed2d8d1e8c93aed0512",
  "kind": "def",
  "lexical_name": "Testable.runSuiteAux",
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
  "slug": "testable-runsuiteaux--e1ebef98403f07f10ab12283",
  "source": {
    "blob": "499ad3680b19379600a3561dbaaf4e6947d2035f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 545,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variant6a0c996b9d104606ad155583bff55958cad82c9c130f87bf9f76f69a7c02c4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1ebef98403f07f10ab12283b1cafea9710c4a1862416ad9a56dff494dab2cd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variant6a0c996b9d104606ad155583bff55958cad82c9c130f87bf9f76f69a7c02c4ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a855a649a4f4619139c234a804537459250e1c3498b76ed2d8d1e8c93aed0512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Testable.runSuiteAux (p : Prop) [Testable p] (cfg : Configuration) :
    TestResult p → Nat → Gen (TestResult p)
  | r, 0 => return r
  | r, n+1 => do
    let size (_ : Nat) := (cfg.numInst - n - 1) * cfg.maxSize / cfg.numInst
    if cfg.traceSuccesses then
      slimTrace s!"New sample"
      slimTrace s!"Retrying up to {cfg.numRetries} times until guards hold"
    let x ← retry ((Testable.runProp p cfg true).resize size) cfg.numRetries
    match x with
    | success (PSum.inl ()) => runSuiteAux p cfg x n
    | gaveUp g => runSuiteAux p cfg (giveUp g r) n
    | _ => return x

/-- Try to find a counter-example of `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variant6a0c996b9d104606ad155583bff55958cad82c9c130f87bf9f76f69a7c02c4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Testable/Variant6a0c996b9d104606ad155583bff55958cad82c9c130f87bf9f76f69a7c02c4ae.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `499ad3680b19379600a3561dbaaf4e6947d2035f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
