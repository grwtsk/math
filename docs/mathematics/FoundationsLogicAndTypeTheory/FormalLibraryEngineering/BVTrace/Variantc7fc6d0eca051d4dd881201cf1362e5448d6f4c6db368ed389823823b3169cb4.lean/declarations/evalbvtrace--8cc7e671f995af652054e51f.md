# evalBvTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09aca9ddc73022f18b8b9db531257a860f647359a78ed6e5c53a4ba6bf6bc4c8",
  "kind": "def",
  "lexical_name": "evalBvTrace",
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
  "slug": "evalbvtrace--8cc7e671f995af652054e51f",
  "source": {
    "blob": "3c666795947e98680ae0e3384159da49d00c40e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVTrace/Variantc7fc6d0eca051d4dd881201cf1362e5448d6f4c6db368ed389823823b3169cb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cc7e671f995af652054e51fe09fbe70c78faa0bc40a89f63546ecb7840b05b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVTrace/Variantc7fc6d0eca051d4dd881201cf1362e5448d6f4c6db368ed389823823b3169cb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09aca9ddc73022f18b8b9db531257a860f647359a78ed6e5c53a4ba6bf6bc4c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalBvTrace : Tactic := fun
  | `(tactic| bv_decide?%$tk $cfgStx:optConfig) => do
    let cfg := { (← elabBVDecideConfig cfgStx) with trimProofs := false }
    let lratFile : System.FilePath ← BVTrace.getLratFileName
    let ctx ← BVCheck.mkContext lratFile cfg
    let g ← getMainGoal
    let trace ← g.withContext do
      bvDecide g ctx
    /-
    Ideally trace.lratCert would be the `ByteArray` version of the proof already and we just write
    it. This isn't yet possible so instead we do the following:
    1. Produce the proof in the tactic.
    2. Skip trimming it in the tactic.
    3. Run trimming on the LRAT file that was produced by the SAT solver directly, emitting the
       correct binary format according to `sat.binaryProofs`.
    TODO: Fix this hack:
    1. Introduce `ByteArray` literals to the kernel.
    2. Just return the fully trimmed proof in the format desired by the configuration from `bvDecide`.
    3. Write it to the file directly.
    -/
    match trace.lratCert with
    | none =>
      let normalizeStx ← `(tactic| bv_normalize)
      TryThis.addSuggestion tk normalizeStx (origSpan? := ← getRef)
    | some .. =>
      if ctx.config.trimProofs then
        let lratPath := (← BVCheck.getSrcDir) / lratFile
        let proof ← loadLRATProof lratPath
        let trimmed ← IO.ofExcept <| LRAT.trim proof
        dumpLRATProof lratPath trimmed cfg.binaryProofs
      let bvCheckStx ← `(tactic| bv_check $cfgStx:optConfig $(quote lratFile.toString))
      TryThis.addSuggestion tk bvCheckStx (origSpan? := ← getRef)
  | _ => throwUnsupportedSyntax

end BVTrace
end Lean.Elab.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVTrace/Variantc7fc6d0eca051d4dd881201cf1362e5448d6f4c6db368ed389823823b3169cb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BVTrace/Variantc7fc6d0eca051d4dd881201cf1362e5448d6f4c6db368ed389823823b3169cb4.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c666795947e98680ae0e3384159da49d00c40e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
