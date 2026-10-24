# IsLocalization.lift_algebraMap_eq_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62eaa62c115f533d629570cd23f1ba7db05ad97f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:425d4aee-d4cf-06db-5025-af913aea1b9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7263133c-7349-9eed-638c-761b015abeba",
  "kind": "theorem",
  "lexical_name": "IsLocalization.lift_algebraMap_eq_algebraMap",
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
  "slug": "islocalization-lift-algebramap-eq-algebramap--88c552fe0cae4549ddd93989",
  "source": {
    "blob": "62eaa62c115f533d629570cd23f1ba7db05ad97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1395,
    "line": 1384,
    "path": "GRWTSK/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88c552fe0cae4549ddd93989cdf6c863f014f35a6952ca629460b383a4efbca3",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7263133c-7349-9eed-638c-761b015abeba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1384–1395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.lift_algebraMap_eq_algebraMap :
    @IsLocalization.lift R _ M Rₘ _ _ Sₘ _ _ (algebraMap R Sₘ)
        (IsLocalization.map_units_map_submonoid S Sₘ) =
      algebraMap Rₘ Sₘ :=
  IsLocalization.lift_unique _ fun _ => (IsScalarTower.algebraMap_apply _ _ _ _).symm
#align is_localization.lift_algebra_map_eq_algebra_map IsLocalization.lift_algebraMap_eq_algebraMap

end

variable (Rₘ Sₘ)

/-- Injectivity of the underlying `algebraMap` descends to the algebra induced by localization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant74f802143d4663fe5eeffa66d0c3354cd7c2636084aecb6d404fc827ae3e21fc.lean#L1384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62eaa62c115f533d629570cd23f1ba7db05ad97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
