# runBuiltinKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51f2d0cf915e492c7485a51b8a42427a34e92966e57125080436fd54eb9f499e",
  "kind": "def",
  "lexical_name": "runBuiltinKernel",
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
  "slug": "runbuiltinkernel--8fd8cb1af9b58d46728f95ea",
  "source": {
    "blob": "66af9e1b7f067abfd1932f968c3ec6f015381571",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante4cdad8c83b9ad3535e42213076593fc8576f35b86b48fa9fbc0be87416f245b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fd8cb1af9b58d46728f95ea4ffe9ec03b6e6d77a63a78eb02ff275dbb8df037",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante4cdad8c83b9ad3535e42213076593fc8576f35b86b48fa9fbc0be87416f245b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51f2d0cf915e492c7485a51b8a42427a34e92966e57125080436fd54eb9f499e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runBuiltinKernel (solution : Export.ExportedEnv) : M (Option String) := do
  IO.println "Running Lean default kernel on solution."
  let env ← Lean.mkEmptyEnvironment
  let mut kernelEnv := env.toKernelEnv
  let origConstMap := solution.constMap
  -- Lean's kernel interprets just the addition of `Quot as adding all of these so adding them
  -- multiple times leads to errors.
  let quotTargets := [`Quot.mk, `Quot.lift, `Quot.ind]
  let kernelConstMap := quotTargets.foldl (init := origConstMap) (·.erase ·)
  try
    kernelEnv ← kernelEnv.replay kernelConstMap
    IO.println "Lean default kernel accepts the solution"
  catch e =>
    IO.println "Lean default kernel rejects the solution"
    return some e.toString

  try
    let verifyTargets := `Quot :: quotTargets
    for quotTarget in verifyTargets do
      if let some info := origConstMap[quotTarget]? then
        let some info' := kernelEnv.find? quotTarget |
          throw <| .userError s!"Could not find quotient constant in final kernel env: {quotTarget}"
        if info != info' then
          throw <| .userError s!"Quotient constant mismatch on: {quotTarget}"
    return none
  catch e =>
    IO.println "Quotient post-check rejects the solution"
    return some e.toString

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante4cdad8c83b9ad3535e42213076593fc8576f35b86b48fa9fbc0be87416f245b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variante4cdad8c83b9ad3535e42213076593fc8576f35b86b48fa9fbc0be87416f245b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66af9e1b7f067abfd1932f968c3ec6f015381571` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
