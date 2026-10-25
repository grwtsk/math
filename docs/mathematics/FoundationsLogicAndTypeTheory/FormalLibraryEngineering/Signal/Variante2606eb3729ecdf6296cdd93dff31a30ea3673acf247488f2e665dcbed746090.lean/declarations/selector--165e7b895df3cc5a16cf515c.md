# selector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1191b6fb885ed9ae7ad831fed32bf316051d9e2c85e5fe58f1b92726643c1c71",
  "kind": "def",
  "lexical_name": "selector",
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
  "slug": "selector--165e7b895df3cc5a16cf515c",
  "source": {
    "blob": "e546c08fcf6c2a6d6506cbee1ec3e54887ca2a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variante2606eb3729ecdf6296cdd93dff31a30ea3673acf247488f2e665dcbed746090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:165e7b895df3cc5a16cf515c5a3fb86f2d78e2f827d767dbe1c9679bd88658b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variante2606eb3729ecdf6296cdd93dff31a30ea3673acf247488f2e665dcbed746090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1191b6fb885ed9ae7ad831fed32bf316051d9e2c85e5fe58f1b92726643c1c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selector (s : Signal.Waiter) : Selector Unit :=
  {
    tryFn := do
      let signalWaiter : AsyncTask _ ← async s.wait
      if ← IO.hasFinished signalWaiter then
        return some ()
      else
        s.native.cancel
        return none

    registerFn waiter := do
      let signalWaiter ← s.wait
      discard <| AsyncTask.mapIO (x := signalWaiter) fun _ => do
        let lose := return ()
        let win promise := promise.resolve (.ok ())
        waiter.race lose win

    unregisterFn := s.native.cancel

  }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variante2606eb3729ecdf6296cdd93dff31a30ea3673acf247488f2e665dcbed746090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Signal/Variante2606eb3729ecdf6296cdd93dff31a30ea3673acf247488f2e665dcbed746090.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e546c08fcf6c2a6d6506cbee1ec3e54887ca2a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
