# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cb389c38d4dee49c938e03533a844df434972dc14f60f206430d2ef31a117a1",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--aaf6328fd4973feb7ecf6384",
  "source": {
    "blob": "47b0664cc2c86c2ef699f8a5b65056c4cfe4ae20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aaf6328fd4973feb7ecf63840efa03a7dfde1b3ce9b3893b9f8dcddc7bea2bee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cb389c38d4dee49c938e03533a844df434972dc14f60f206430d2ef31a117a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ContinuousNeg EReal := ⟨negOrderIso.continuous⟩

end EReal

namespace NNReal

/-!
Instances for the following typeclasses are defined:

* `IsTopologicalSemiring ℝ≥0`
* `ContinuousSub ℝ≥0`
* `HasContinuousInv₀ ℝ≥0` (continuity of `x⁻¹` away from `0`)
* `ContinuousSMul ℝ≥0 α` (whenever `α` has a continuous `MulAction ℝ α`)

Everything is inherited from the corresponding structures on the reals.
-/
-- short-circuit type class inference
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Real/Variant1e8683446b6e3f1e193c64be061e6dd02beb3e8973216d21e3183c1fba9a08d4.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47b0664cc2c86c2ef699f8a5b65056c4cfe4ae20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
