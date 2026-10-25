# tryCur

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d452afcbe5574f9908f752b2aabff155feebe3ffe2120497fa1f387b1090907",
  "kind": "def",
  "lexical_name": "tryCur",
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
  "slug": "trycur--88d15fb2af4c78f0dc844c5c",
  "source": {
    "blob": "b22aff0ada278bec30e634a13128237a8bb1298b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88d15fb2af4c78f0dc844c5c516a1a0203afb78a7c7c607fead0b939df794089",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d452afcbe5574f9908f752b2aabff155feebe3ffe2120497fa1f387b1090907`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryCur [Monad m] : M m Bool := do
  let maxCalls := (← read).maxCalls
  if maxCalls > 0 && (← get).numCalls ≥ maxCalls then
    throw ()
  else
    modify fun s => { s with numCalls := s.numCalls + 1 }
    if (← (← read).test (← get).cur) then
      markFound (m := m)
      return true
    else
      return false

/--
**Initialization (growing phase).**
Starting from `initialMask`, this procedure sequentially activates parameters
(i.e., flips `false` bits to `true`) until `test` first returns `true`.

For each inactive parameter index `i`, it:
1. sets `cur[i] := true` and records `i` in `added`;
2. calls `tryCur` to evaluate the updated mask;
3. stops immediately once `test` succeeds.

This phase exploits the assumption that `test` is *monotonic* and that the
minimal true configuration is *close* to `initialMask`.  It guarantees that
at completion, the current mask `cur` satisfies `test` if there is a configuration
that satisfies it. `(← get).added.back!` is the element whose inclusion first made `test` true.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22aff0ada278bec30e634a13128237a8bb1298b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
