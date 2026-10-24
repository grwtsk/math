# Args

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab74b1c9247d6c7362f993fab2833f842a913a893612f661d10702086cff1c1a",
  "kind": "structure",
  "lexical_name": "Args",
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
  "slug": "args--4c287bd6debbc2f844e9ee67",
  "source": {
    "blob": "84ef88a1e784d3939ea9cccb7dcf29aeff1b44c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 404,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c287bd6debbc2f844e9ee67778c034e3153ed75ec03fd7b3795d26be10aaf02",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab74b1c9247d6c7362f993fab2833f842a913a893612f661d10702086cff1c1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 404–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Args where
  /-- `--help`: shows the help -/
  help : Bool := false
  /-- `--force`: skips the `lake build --no-build` sanity check -/
  force : Bool := false
  /-- `--no-downstream`: disables downstream mode -/
  downstream : Bool := true
  /-- `--gh-style`: output messages that can be parsed by `gh-problem-matcher-wrap` -/
  githubStyle : Bool := false
  /-- `--explain`: give constants explaining why each module is needed -/
  explain : Bool := false
  /-- `--fix`: apply the fixes directly -/
  fix : Bool := false
  /-- `--update`: update the config file -/
  update : Bool := false
  /-- `--global`: with `--update`, add imports to `ignoreImport` instead of `ignore` -/
  global : Bool := false
  /-- `--cfg FILE`: choose a custom location for the config file -/
  cfg : Option String := none
  /-- `<MODULE>..`: the list of root modules to check -/
  mods : Array Name := #[]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Main/Variant2e603eabed2a2afc6d266c13ad220c41db0a4c13b13f5dea45fe81a75371f519.lean#L404).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ef88a1e784d3939ea9cccb7dcf29aeff1b44c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
