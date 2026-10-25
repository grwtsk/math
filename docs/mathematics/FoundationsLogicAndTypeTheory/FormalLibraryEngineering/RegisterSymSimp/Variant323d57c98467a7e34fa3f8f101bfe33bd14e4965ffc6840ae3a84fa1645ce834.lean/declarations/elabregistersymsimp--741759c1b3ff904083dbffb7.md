# elabRegisterSymSimp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4537d0b34c659bdf73c8afe83521dadc21eba90062d09f6e4019fe7dfe61c2b0",
  "kind": "def",
  "lexical_name": "elabRegisterSymSimp",
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
  "slug": "elabregistersymsimp--741759c1b3ff904083dbffb7",
  "source": {
    "blob": "19292a3d0aa0bebfc1ead06b7da9e0f08d442d84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterSymSimp/Variant323d57c98467a7e34fa3f8f101bfe33bd14e4965ffc6840ae3a84fa1645ce834.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:741759c1b3ff904083dbffb76e819e08b10c01781dd6f05429e7a7f97c97f445",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterSymSimp/Variant323d57c98467a7e34fa3f8f101bfe33bd14e4965ffc6840ae3a84fa1645ce834.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4537d0b34c659bdf73c8afe83521dadc21eba90062d09f6e4019fe7dfe61c2b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabRegisterSymSimp : CommandElab := fun stx => do
  let id := stx[1]
  let name := id.getId
  -- Check for duplicate variant
  if (getSymSimpVariant? (← getEnv) name).isSome then
    throwErrorAt id "Sym.simp variant `{name}` is already registered"
  let fields := stx[3].getArgs
  let mut pre? : Option Syntax := none
  let mut post? : Option Syntax := none
  let mut maxSteps? : Option Nat := none
  let mut maxDischargeDepth? : Option Nat := none
  for field in fields do
    match field with
    | `(sym_simp_field| maxSteps := $val:num) =>
      unless maxSteps?.isNone do throwErrorAt field "duplicate `maxSteps` field"
      maxSteps? := some val.getNat
    | `(sym_simp_field| maxDischargeDepth := $val:num) =>
      unless maxDischargeDepth?.isNone do throwErrorAt field "duplicate `maxDischargeDepth` field"
      maxDischargeDepth? := some val.getNat
    | `(sym_simp_field| pre := $proc) =>
      unless pre?.isNone do throwErrorAt field "duplicate `pre` field"
      pre? := some proc
    | `(sym_simp_field| post := $proc) =>
      unless post?.isNone do throwErrorAt field "duplicate `post` field"
      post? := some proc
    | _ => throwErrorAt field "unexpected field"
  -- Validate pre/post by elaborating them
  validateOptionSimprocSyntax pre?
  validateOptionSimprocSyntax post?
  let config := { maxSteps := maxSteps?.getD 100_000, maxDischargeDepth := maxDischargeDepth?.getD 2 }
  let variant : SymSimpVariant := { pre?, post?, config }
  modifyEnv fun env => symSimpVariantExtension.addEntry env { name, variant }

end Lean.Elab.Command
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterSymSimp/Variant323d57c98467a7e34fa3f8f101bfe33bd14e4965ffc6840ae3a84fa1645ce834.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RegisterSymSimp/Variant323d57c98467a7e34fa3f8f101bfe33bd14e4965ffc6840ae3a84fa1645ce834.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19292a3d0aa0bebfc1ead06b7da9e0f08d442d84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
