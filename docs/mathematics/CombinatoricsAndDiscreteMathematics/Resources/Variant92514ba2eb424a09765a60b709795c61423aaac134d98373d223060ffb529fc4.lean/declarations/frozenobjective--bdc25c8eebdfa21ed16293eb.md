# FrozenObjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a2b8d71f9ebbe16e14c17c7e5ffc396186f2ec274a2de7de8429ac06e0735a8",
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
  "slug": "frozenobjective--bdc25c8eebdfa21ed16293eb",
  "source": {
    "blob": "8b8562049e93fc16aa03371cae2b98468b0342b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdc25c8eebdfa21ed16293eb917e7bea9c051442e86c4d945d09a4724074757d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a2b8d71f9ebbe16e14c17c7e5ffc396186f2ec274a2de7de8429ac06e0735a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–222.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant92514ba2eb424a09765a60b709795c61423aaac134d98373d223060ffb529fc4.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b8562049e93fc16aa03371cae2b98468b0342b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
