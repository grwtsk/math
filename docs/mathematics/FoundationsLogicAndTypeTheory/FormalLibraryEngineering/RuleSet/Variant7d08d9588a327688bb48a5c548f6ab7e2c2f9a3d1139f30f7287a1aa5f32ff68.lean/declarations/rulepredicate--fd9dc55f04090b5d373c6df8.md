# rulePredicate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:456714910b5a0637983289d8e14edad8b32e772da7ac0c05c726671d80bdcb72",
  "kind": "def",
  "lexical_name": "rulePredicate",
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
  "slug": "rulepredicate--fd9dc55f04090b5d373c6df8",
  "source": {
    "blob": "1069d357ec7c206dbbad9cc19842067e269ea8dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 457,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd9dc55f04090b5d373c6df870902706a2422ab16ccdd27a5fbbbd19675a3499",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:456714910b5a0637983289d8e14edad8b32e772da7ac0c05c726671d80bdcb72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def rulePredicate (opts : Lean.Options) (rs : LocalRuleSet)
    (include? : Rule α → Bool) : Rule α → Bool :=
  -- HACK When stateful forward reasoning is active, we exclude rules which are
  -- already covered by equivalent `ForwardRule`s.
  if aesop.dev.statefulForward.get opts then
    λ r => include? r && ! rs.isErased r.name &&
           ! rs.forwardRuleNames.contains r.name
  else
    λ r => include? r && ! rs.isErased r.name

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant7d08d9588a327688bb48a5c548f6ab7e2c2f9a3d1139f30f7287a1aa5f32ff68.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1069d357ec7c206dbbad9cc19842067e269ea8dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
