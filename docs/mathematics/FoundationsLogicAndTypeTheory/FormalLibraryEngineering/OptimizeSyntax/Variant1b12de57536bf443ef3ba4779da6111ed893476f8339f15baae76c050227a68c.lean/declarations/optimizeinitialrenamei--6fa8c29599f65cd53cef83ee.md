# optimizeInitialRenameI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a32f60a55ebac9d345c78995d80fb072e49e79389ad47554c7e1f618de009abb",
  "kind": "def",
  "lexical_name": "optimizeInitialRenameI",
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
  "slug": "optimizeinitialrenamei--6fa8c29599f65cd53cef83ee",
  "source": {
    "blob": "7a15f4267c0a2279608b2328e1b3d50f054d3477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptimizeSyntax/Variant1b12de57536bf443ef3ba4779da6111ed893476f8339f15baae76c050227a68c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fa8c29599f65cd53cef83ee9b025c5fe3cabf965133447982c6b50a95407803",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptimizeSyntax/Variant1b12de57536bf443ef3ba4779da6111ed893476f8339f15baae76c050227a68c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a32f60a55ebac9d345c78995d80fb072e49e79389ad47554c7e1f618de009abb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def optimizeInitialRenameI : Syntax → m Syntax
  | stx@`(tacticSeq| $tacs:tactic*) => do
    let tacs := tacs.getElems
    let some (tac : TSyntax `tactic) := tacs[0]?
      | return stx
    match tac with
    | `(tactic| rename_i $[$ns:ident]*) =>
      let usedNames := tacs[1:].foldl (init := ∅) λ usedNames stx =>
        addIdents usedNames stx.raw
      let mut dropUntil := 0
      for n in ns do
        if usedNames.contains n.getId then
          break
        else
          dropUntil := dropUntil + 1
      if dropUntil == 0 then
        return stx
      else if dropUntil == ns.size then
        tacsToTacticSeq tacs[1:]
      else
        let ns : TSyntaxArray `ident := ns[dropUntil:].toArray
        let tac ← `(tactic| rename_i $[$ns:ident]*)
        let mut result : Array (TSyntax `tactic) := Array.mkEmpty tacs.size
        result := result.push tac
        result := result ++ tacs[1:]
        tacsToTacticSeq result
    | _ => return stx
  | stx => return stx
where
  -- Inlining this helper function triggers a code gen issue:
  -- https://github.com/leanprover/lean4/issues/4548
  tacsToTacticSeq (tacs : Array (TSyntax `tactic)) : m (TSyntax ``tacticSeq) :=
    `(tacticSeq| $tacs:tactic*)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptimizeSyntax/Variant1b12de57536bf443ef3ba4779da6111ed893476f8339f15baae76c050227a68c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OptimizeSyntax/Variant1b12de57536bf443ef3ba4779da6111ed893476f8339f15baae76c050227a68c.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a15f4267c0a2279608b2328e1b3d50f054d3477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
