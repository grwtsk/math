# naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ef007c1a372f6c38ed3064e2bf7dfe8976dfe44be5566dca5c47698a37354a4",
  "kind": "def",
  "lexical_name": "naturality",
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
  "slug": "naturality--b0cd477136fcc95aa9ac8351",
  "source": {
    "blob": "d4b5364b4256732efe4d1c31ff7538d496cd5f6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 96,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0cd477136fcc95aa9ac8351f0acbff4f59f88b960557489f5340ce452ca7d87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ef007c1a372f6c38ed3064e2bf7dfe8976dfe44be5566dca5c47698a37354a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def naturality (nm : Name) (p : NormalizedHom) (η : Mor₂Iso) : CoherenceM ρ Expr := do
  let result ← match η with
  | .of _ => throwError m!"could not find a structural isomorphism, but {η.e}"
  | .coherenceComp _ _ _ _ _ α η θ => withTraceNode nm (fun _ => return m!"monoidalComp") do
    let α ← MonadCoherehnceHom.unfoldM α
    let αθ ← comp₂M α θ
    let ηαθ ← comp₂M η αθ
    naturality nm p ηαθ
  | .structuralAtom η => match η with
    | .coherenceHom α => withTraceNode nm (fun _ => return m!"coherenceHom") do
      let α ← MonadCoherehnceHom.unfoldM α
      naturality nm p α
    | .associator _ f g h => withTraceNode nm (fun _ => return m!"associator") do
      let ⟨pf, η_f⟩ ← normalize p f
      let ⟨pfg, η_g⟩ ← normalize pf g
      let ⟨pfgh, η_h⟩ ← normalize pfg h
      mkNaturalityAssociator p pf pfg pfgh f g h η_f η_g η_h
    | .leftUnitor _ f => withTraceNode nm (fun _ => return m!"leftUnitor") do
      let ⟨pf, η_f⟩ ← normalize p f
      mkNaturalityLeftUnitor p pf f η_f
    | .rightUnitor _ f => withTraceNode nm (fun _ => return m!"rightUnitor") do
      let ⟨pf, η_f⟩ ← normalize p f
      mkNaturalityRightUnitor p pf f η_f
    | .id _ f => withTraceNode nm (fun _ => return m!"id") do
    let ⟨pf, η_f⟩ ← normalize p f
    mkNaturalityId p pf f η_f
  | .comp _ f g h η θ => withTraceNode nm (fun _ => return m!"comp") do
    let ⟨pf, η_f⟩ ← normalize p f
    let ⟨_, η_g⟩ ← normalize p g
    let ⟨_, η_h⟩ ← normalize p h
    let ih_η ← naturality nm p η
    let ih_θ ← naturality nm p θ
    mkNaturalityComp p pf f g h η θ η_f η_g η_h ih_η ih_θ
  | .whiskerLeft _ f g h η => withTraceNode nm (fun _ => return m!"whiskerLeft") do
    let ⟨pf, η_f⟩ ← normalize p f
    let ⟨pfg, η_fg⟩ ← normalize pf g
    let ⟨_, η_fh⟩ ← normalize pf h
    let ih ← naturality nm pf η
    mkNaturalityWhiskerLeft p pf pfg f g h η η_f η_fg η_fh ih
  | .whiskerRight _ f g η h => withTraceNode nm (fun _ => return m!"whiskerRight") do
    let ⟨pf, η_f⟩ ← normalize p f
    let ⟨_, η_g⟩ ← normalize p g
    let ⟨pfh, η_fh⟩ ← normalize pf h
    let ih ← naturality nm p η
    mkNaturalityWhiskerRight p pf pfh f g h η η_f η_g η_fh ih
  | .horizontalComp _ f₁ g₁ f₂ g₂ η θ => withTraceNode nm (fun _ => return m!"hComp") do
    let ⟨pf₁, η_f₁⟩ ← normalize p f₁
    let ⟨_, η_g₁⟩ ← normalize p g₁
    let ⟨pf₁f₂, η_f₂⟩ ← normalize pf₁ f₂
    let ⟨_, η_g₂⟩ ← normalize pf₁ g₂
    let ih_η ← naturality nm p η
    let ih_θ ← naturality nm pf₁ θ
    mkNaturalityHorizontalComp p pf₁ pf₁f₂ f₁ g₁ f₂ g₂ η θ η_f₁ η_g₁ η_f₂ η_g₂ ih_η ih_θ
  | .inv _ f g η => withTraceNode nm (fun _ => return m!"inv") do
    let ⟨pf, η_f⟩ ← normalize p f
    let ⟨_, η_g⟩ ← normalize p g
    let ih_η ← naturality nm p η
    mkNaturalityInv p pf f g η η_f η_g ih_η
  withTraceNode nm (fun _ => return m!"{checkEmoji} {← inferType result}") do
    if ← isTracingEnabledFor nm then addTrace nm m!"proof: {result}"
  return result

/-- Prove the equality between structural isomorphisms using the naturality of `normalize`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PureCoherence/Variantb09cfb19758e3175fd98ed9706325a91e4a4c936831234fac8a43bac81d71785.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4b5364b4256732efe4d1c31ff7538d496cd5f6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
