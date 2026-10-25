# traceSimpTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f34e507a26bdf9f0b371dd34c2ecf3fdd925588238a1e30d76b8aef52de9c6ba",
  "kind": "def",
  "lexical_name": "traceSimpTheorems",
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
  "slug": "tracesimptheorems--413954a1580f75a03399f28b",
  "source": {
    "blob": "fc99c5062d0fb59f482f1b02bb61ad86125afa65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tracing/Variant9dcb9960323578ca32cf4c60e575169e3fc37fcb303dcb64b33a167e3abc5fd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:413954a1580f75a03399f28bfdb3e1975503397190cd6bb81bf2b0d212110d34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tracing/Variant9dcb9960323578ca32cf4c60e575169e3fc37fcb303dcb64b33a167e3abc5fd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f34e507a26bdf9f0b371dd34c2ecf3fdd925588238a1e30d76b8aef52de9c6ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def traceSimpTheorems (s : SimpTheorems) (opt : TraceOption) : CoreM Unit := do
  if ! (← opt.isEnabled) then
    return
  withConstAesopTraceNode opt (return "Erased entries") do
    aesop_trace![opt] "(Note: even if these entries appear in the sections below, they will not be used by simp.)"
    for e in PersistentHashSet.toArray s.erased |>.map (toString ·.key) |>.qsortOrd do
      aesop_trace![opt] e
  withConstAesopTraceNode opt (return "Pre lemmas") do
    traceSimpTheoremTreeContents s.pre opt
  withConstAesopTraceNode opt (return "Post lemmas") do
    traceSimpTheoremTreeContents s.post opt
  withConstAesopTraceNode opt (return "Constants to unfold") do
    for e in PersistentHashSet.toArray s.toUnfold |>.map toString |>.qsortOrd do
      aesop_trace![opt] e

end Aesop
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tracing/Variant9dcb9960323578ca32cf4c60e575169e3fc37fcb303dcb64b33a167e3abc5fd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tracing/Variant9dcb9960323578ca32cf4c60e575169e3fc37fcb303dcb64b33a167e3abc5fd2.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc99c5062d0fb59f482f1b02bb61ad86125afa65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
