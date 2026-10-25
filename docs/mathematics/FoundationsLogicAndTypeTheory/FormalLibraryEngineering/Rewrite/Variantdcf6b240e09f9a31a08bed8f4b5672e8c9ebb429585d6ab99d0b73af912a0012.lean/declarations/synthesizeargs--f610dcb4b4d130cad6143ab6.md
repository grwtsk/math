# synthesizeArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08a846a9116d9e3b4ba849323bb1e53df1a77d03393ecb841b64a61557fce334",
  "kind": "def",
  "lexical_name": "synthesizeArgs",
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
  "slug": "synthesizeargs--f610dcb4b4d130cad6143ab6",
  "source": {
    "blob": "3a827dc4563a3afaefd4e052606efc0d052a06e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f610dcb4b4d130cad6143ab6cdb24abb8b75046dc8d271fa909f38ba2af90b4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08a846a9116d9e3b4ba849323bb1e53df1a77d03393ecb841b64a61557fce334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def synthesizeArgs (thmId : Origin) (bis : Array BinderInfo) (xs : Array Expr) : SimpM Bool := do
  let skipAssignedInstances := tactic.skipAssignedInstances.get (← getOptions)
  for x in xs, bi in bis do
    let type ← inferType x
    -- We use the flag `tactic.skipAssignedInstances` for backward compatibility.
    -- See comment below.
    if !skipAssignedInstances && bi.isInstImplicit then
      unless (← synthesizeInstance x type) do
        return false
    /-
    We used to invoke `synthesizeInstance` for every instance implicit argument,
    to ensure the synthesized instance was definitionally equal to the one in
    the term, but it turned out to be to inconvenient in practice. Here is an
    example:
    ```
    theorem dec_and (p q : Prop) [Decidable (p ∧ q)] [Decidable p] [Decidable q] : decide (p ∧ q) = (p && q) := by
      by_cases p <;> by_cases q <;> simp [*]

    theorem dec_not (p : Prop) [Decidable (¬p)] [Decidable p] : decide (¬p) = !p := by
      by_cases p <;> simp [*]

    example [Decidable u] [Decidable v] : decide (u ∧ (v → False)) = (decide u && !decide v) := by
      simp only [imp_false]
      simp only [dec_and]
      simp only [dec_not]
    ```
    -/
    if (← instantiateMVars x).isMVar then
      -- A hypothesis can be both a type class instance as well as a proposition,
      -- in that case we try both TC synthesis and the discharger
      -- (because we don't know whether the argument was originally explicit or instance-implicit).
      if (← isClass? type).isSome then
        if (← synthesizeInstance x type) then
          continue
      if (← isProp type) then
        unless (← discharge?' thmId x type) do
          return false
  return true
where
  synthesizeInstance (x type : Expr) : SimpM Bool := do
    match (← trySynthInstance type) with
    | LOption.some val =>
      if (← withReducibleAndInstances <| isDefEq x val) then
        return true
      else
        trace[Meta.Tactic.simp.discharge] "{← ppOrigin thmId}, failed to assign instance{indentExpr type}\nsynthesized value{indentExpr val}\nis not definitionally equal to{indentExpr x}"
        return false
    | _ =>
      trace[Meta.Tactic.simp.discharge] "{← ppOrigin thmId}, failed to synthesize instance{indentExpr type}"
      return false

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variantdcf6b240e09f9a31a08bed8f4b5672e8c9ebb429585d6ab99d0b73af912a0012.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a827dc4563a3afaefd4e052606efc0d052a06e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
