# cbvSimprocDispatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99d693618b6ab80b5c400497ac2cf5dc2f8e49605e951a3e85000e467f994e8f",
  "kind": "def",
  "lexical_name": "cbvSimprocDispatch",
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
  "slug": "cbvsimprocdispatch--304df7d782fa1de106e5301c",
  "source": {
    "blob": "088ba5d882c5a6851b9dae34d5392240c7c018e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Varianteee1a0fc2981d560124df157d536432bc15616a2f80fefc3633aebe58b8213e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:304df7d782fa1de106e5301c79036d27bf20bb89dc66d2cbf46201321273be5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Varianteee1a0fc2981d560124df157d536432bc15616a2f80fefc3633aebe58b8213e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99d693618b6ab80b5c400497ac2cf5dc2f8e49605e951a3e85000e467f994e8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cbvSimprocDispatch (tree : DiscrTree CbvSimprocEntry)
    (erased : PHashSet Name) : Simproc := fun e => do
  let candidates := Sym.getMatchWithExtra tree e
  if candidates.isEmpty then
    return .rfl
  for (entry, numExtra) in candidates do
    unless erased.contains entry.declName do
      let simprocName := (privateToUserName entry.declName).replacePrefix `Lean.Meta.Sym.Simp .anonymous |>.replacePrefix `Lean.Meta.Tactic.Cbv .anonymous
      let result ← withTraceNode `Meta.Tactic.cbv.simprocs (fun
          | .ok (Result.step e' ..) => return m!"simproc {simprocName}:{indentExpr e}\n==>{indentExpr e'}"
          | .ok (Result.rfl true _) => return m!"simproc {simprocName}: done{indentExpr e}"
          | .ok _                   => return m!"simproc {simprocName}: no change"
          | .error err              => return m!"simproc {simprocName}: {err.toMessageData}") do
        if numExtra == 0 then
          entry.proc e
        else
          simpOverApplied e numExtra entry.proc
      if result matches .step _ _ _ _ then
        return result
      if result matches .rfl (done := true) then
        return result
  return .rfl

end Lean.Meta.Tactic.Cbv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Varianteee1a0fc2981d560124df157d536432bc15616a2f80fefc3633aebe58b8213e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Varianteee1a0fc2981d560124df157d536432bc15616a2f80fefc3633aebe58b8213e2.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `088ba5d882c5a6851b9dae34d5392240c7c018e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
