# resolveConfigDeclTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0664a4ebe78abda89837a9938543e16345a255f18d0c3af79c10afd314191118",
  "kind": "def",
  "lexical_name": "resolveConfigDeclTarget",
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
  "slug": "resolveconfigdecltarget--ed6e0a2605e95336fd4b224e",
  "source": {
    "blob": "97d73984053ff23eec2032ac0b80d4576dbee791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed6e0a2605e95336fd4b224e2b632bfbce1ccbc795f4ac05793d17115d90b19c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0664a4ebe78abda89837a9938543e16345a255f18d0c3af79c10afd314191118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveConfigDeclTarget
  (ws : Workspace) (pkg : Package)
  {target : Name} (decl : NConfigDecl pkg.keyName target) (facet : Name)
: Except CliError (Array BuildSpec) := do
  if h : decl.kind.isAnonymous then
    Array.singleton <$> resolveCustomTarget pkg target facet (decl.targetConfig h)
  else
    let facet := if facet.isAnonymous then `default else facet
    if let some config := ws.findFacetConfig? (decl.kind ++ facet) then
      let tgt := decl.mkConfigTarget pkg
      let tgt := cast (by simp [decl.target_eq_type h]) tgt
      let info := BuildInfo.facet (.packageTarget pkg.keyName decl.name) decl.kind tgt config.name
      return #[mkConfigBuildSpec info config rfl]
    else
      throw <| CliError.unknownFacet decl.kind.toString facet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Varianteeeb5c9c696d47946966f98510bde1ffe7c2b16a3a468e3cb45a448b056646f5.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97d73984053ff23eec2032ac0b80d4576dbee791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
