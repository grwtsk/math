# delabMVarAsStr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:471bc2b630cc82dd9918e15e6ea339b14c93e9a82a2505f16c1716aebc9eb785",
  "kind": "def",
  "lexical_name": "delabMVarAsStr",
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
  "slug": "delabmvarasstr--ecc356e6d23f492d49560c00",
  "source": {
    "blob": "359370fff157320eaf1b015c3742f7b5a3af70c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Varianta7500cc7f5f858e540d7e936a0450fc37b0ea5dccfe1a1111129dee5eec739c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecc356e6d23f492d49560c006feab3d3f2be06656e867bccb62a160c12506560",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Varianta7500cc7f5f858e540d7e936a0450fc37b0ea5dccfe1a1111129dee5eec739c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:471bc2b630cc82dd9918e15e6ea339b14c93e9a82a2505f16c1716aebc9eb785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def delabMVarAsStr (m : MVarId) : MetaM String := do
  delabMVarAuxAux m (pure "?_") (fun n : Name => pure <| "?" ++ n.toString)
    (fun n => pure <| "?" ++ n.toString ++ " (unreachable)")
    (ppMVars := getPPMVars (← getOptions))
    (ppMVarsAnonymous := getPPMVarsAnonymous (← getOptions))

/--
Approximate check that the application `?m a₁ … aₙ` of the delayed assignment metavariable `?m`
can be pretty printed using the pending metavariable.

Heuristic: we assume the ldecl arguments are correct, and for the cdecls we check that they are
distinct fvars
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Varianta7500cc7f5f858e540d7e936a0450fc37b0ea5dccfe1a1111129dee5eec739c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Varianta7500cc7f5f858e540d7e936a0450fc37b0ea5dccfe1a1111129dee5eec739c7.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `359370fff157320eaf1b015c3742f7b5a3af70c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
