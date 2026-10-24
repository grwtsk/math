# FrozenObjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b8d13893e6993a2e361daa876e7aa70b20ffb502fa9ef790f22a003947b8174",
  "kind": "structure",
  "lexical_name": "FrozenObjective",
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
  "slug": "frozenobjective--9fe9f8e83593df8974f77493",
  "source": {
    "blob": "975eee42042529c49a0dfa757d86bb1648bb3638",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fe9f8e83593df8974f774938eb0d7475639ecaa451230a95d504d2c573c6dea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b8d13893e6993a2e361daa876e7aa70b20ffb502fa9ef790f22a003947b8174`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FrozenObjective (Index : Type*) where
  /-- Identity of the objective and constraint source, bound externally to the run snapshot. -/
  profileIdentity : String
  /-- Exact unit or cost model of each measured coordinate. -/
  units : Index → String
  /-- The primary scarce coordinate. -/
  primary : Index
  /-- Optional explicitly chosen secondary objective. -/
  secondary : Option Index
  /-- Per-coordinate upper constraints; none means unconstrained, not unmeasured. -/
  bounds : Index → Option ℕ
  /-- Optional declared scalar projection; raw vectors remain available. -/
  scalarization : Option (ScalarProjection Index)

/-- Every declared finite constraint must hold for a measured vector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975eee42042529c49a0dfa757d86bb1648bb3638` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
