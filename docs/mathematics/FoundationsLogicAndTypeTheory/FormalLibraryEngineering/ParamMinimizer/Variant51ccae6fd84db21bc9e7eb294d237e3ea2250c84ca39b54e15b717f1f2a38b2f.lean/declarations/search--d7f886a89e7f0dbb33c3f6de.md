# search

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b097af445770eec52ad07af8f04b7893321c56ff89447c6429c0e1ed7fe9b5e5",
  "kind": "def",
  "lexical_name": "search",
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
  "slug": "search--d7f886a89e7f0dbb33c3f6de",
  "source": {
    "blob": "b22aff0ada278bec30e634a13128237a8bb1298b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 187,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7f886a89e7f0dbb33c3f6deed23c4cf1726d5a7187c15e30da6e93d5d240aec",
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

Occurrence: `declaration:b097af445770eec52ad07af8f04b7893321c56ff89447c6429c0e1ed7fe9b5e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def search
    [Monad m]
    (initialMask : Array Bool)
    (test : Array Bool → m Bool)
    (maxCalls : Nat := 0) -- 0 means unbounded
    : m Result := do
  if (← test initialMask) then
    return { paramMask := initialMask, numCalls := 1, status := .precise }
  let (r, s) ← main { initialMask, test, maxCalls} |>.run |>.run { cur := initialMask, numCalls := 1 }
  let status := if s.found then
    match r with
    | .ok _ => .precise
    | .error _ => .approx
  else
    .missing
  return { paramMask := s.cur, numCalls := s.numCalls, status }

end Lean.Util.ParamMinimizer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22aff0ada278bec30e634a13128237a8bb1298b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
