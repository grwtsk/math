# instIsOrderedModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ea450fea60c1b334e02a0589ab604f36884dce83b678a89a79377712c964260",
  "kind": "instance",
  "lexical_name": "instIsOrderedModule",
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
  "slug": "instisorderedmodule--73c256506a4edfe32515a710",
  "source": {
    "blob": "7330247a13e715e138174a336ec7f34f9a23dee7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 73,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73c256506a4edfe32515a710075bdab07f025a46bb989dbc0057af7f31a84c8e",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ea450fea60c1b334e02a0589ab604f36884dce83b678a89a79377712c964260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instIsOrderedModule [hM : IsOrderedModule R M] : IsOrderedModule R≥0 M where
  smul_le_smul_of_nonneg_left _b hb _a₁ _a₂ ha := hM.smul_le_smul_of_nonneg_left hb ha
  smul_le_smul_of_nonneg_right _b hb _a₁ _a₂ ha := hM.smul_le_smul_of_nonneg_right hb ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7330247a13e715e138174a336ec7f34f9a23dee7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
