# getPatternArgKinds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:988151d7f0fd63ce3a55ad039865389987fb41aa637398fbe6ba5c7384631ff4",
  "kind": "def",
  "lexical_name": "getPatternArgKinds",
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
  "slug": "getpatternargkinds--c6e505bd7b792bc019752fa0",
  "source": {
    "blob": "654387b687c2b34418a7dd62aa266d893b498135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 584,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6e505bd7b792bc019752fa06e543fc335d5c1b1975215117ae0c4abe1eafc71",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:988151d7f0fd63ce3a55ad039865389987fb41aa637398fbe6ba5c7384631ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def getPatternArgKinds (f : Expr) (numArgs : Nat) : MetaM (Array PatternArgKind) := do
  let pinfos := (← getFunInfoNArgs f numArgs).paramInfo
  forallBoundedTelescope (← inferType f) numArgs fun xs _ => do
    xs.mapIdxM fun idx x => do
      if (← isProp x) then
        return .relevant
      else if (← isProof x) then
        return .proof
      else if (← isTypeFormer x) then
        if h : idx < pinfos.size then
          /-
          We originally wanted to ignore types and type formers in `grind` and treat them as supporting elements.
          Thus, we wanted to always return `.typeFormer`. However, we changed our heuristic because of the following example:
          ```
          example {α} (f : α → Type) (a : α) (h : ∀ x, Nonempty (f x)) : Nonempty (f a) := by
            grind
          ```
          In this example, we are reasoning about types. Therefore, we adjusted the heuristic as follows:
          a type or type former is considered a supporting element only if it has forward dependencies.
          Note that this is not the case for `Nonempty`.
          -/
          if pinfos[idx].hasFwdDeps then return .typeFormer else return .relevant
        else
          return .typeFormer
      else
        let xDecl ← x.fvarId!.getDecl
        if xDecl.binderInfo matches .instImplicit then
          return .instImplicit
        let type := xDecl.type
        /-
        **Note**: Even if the binder is not marked as instance implicit, we may still
        synthesize it using type class resolution. The motivation is declarations such as
        ```
        ZeroMemClass.zero_mem {S : Type} {M : outParam Type} {inst1 : Zero M} {inst2 : SetLike S M}
            [self : @ZeroMemClass S M inst1 inst2] (s : S) : 0 ∈ s
        ```
        Recall that a similar approach is used in `simp`.
        -/
        if (← isClass? type).isSome then
          return .instImplicit
        else if type.isOutParam then
          return .outParam
        else
          return .relevant

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant6063b6336fbd64037b8a1f0ac0b0285aedd199766665533c63cfd9d827273d55.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `654387b687c2b34418a7dd62aa266d893b498135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
