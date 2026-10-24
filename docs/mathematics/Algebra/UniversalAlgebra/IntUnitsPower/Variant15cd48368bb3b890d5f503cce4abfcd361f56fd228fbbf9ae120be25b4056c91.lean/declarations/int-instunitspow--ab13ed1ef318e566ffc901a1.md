# Int.instUnitsPow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d32a6843d7d6e2523347a7195df12450127855f131197b452bbab5810d9da84a",
  "kind": "instance",
  "lexical_name": "Int.instUnitsPow",
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
  "slug": "int-instunitspow--ab13ed1ef318e566ffc901a1",
  "source": {
    "blob": "878d454335e4f09c72f81bb6c2450d7a93b45148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 59,
    "path": "GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab13ed1ef318e566ffc901a155cf13e11ec260746af6361fcbceca9c2c255464",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d32a6843d7d6e2523347a7195df12450127855f131197b452bbab5810d9da84a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Int.instUnitsPow : Pow ℤˣ R where
  pow u r := (r • Additive.ofMul u).toMul

-- The above instances form no typeclass diamonds with the standard power operators
-- but we will need `reducible_and_instances` which currently fails https://github.com/leanprover-community/mathlib4/issues/10906
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/IntUnitsPower/Variant15cd48368bb3b890d5f503cce4abfcd361f56fd228fbbf9ae120be25b4056c91.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `878d454335e4f09c72f81bb6c2450d7a93b45148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
