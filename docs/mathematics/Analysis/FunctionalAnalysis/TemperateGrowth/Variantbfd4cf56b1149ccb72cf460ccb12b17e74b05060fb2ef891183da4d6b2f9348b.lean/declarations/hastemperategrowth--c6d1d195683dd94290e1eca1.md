# HasTemperateGrowth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d5e65de4ae3fba2c32247a35e42f62161e1a7e31cc275ba0da01f48ee2fd9cd",
  "kind": "class",
  "lexical_name": "HasTemperateGrowth",
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
  "slug": "hastemperategrowth--c6d1d195683dd94290e1eca1",
  "source": {
    "blob": "97ec26c2b3c796caa8e997a28d64d404f28af170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 481,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6d1d195683dd94290e1eca1192764b7e8966ad951d1407f03ca8f1575373bf8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d5e65de4ae3fba2c32247a35e42f62161e1a7e31cc275ba0da01f48ee2fd9cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasTemperateGrowth (μ : Measure E) : Prop where
  exists_integrable : ∃ (n : ℕ), Integrable (fun x ↦ (1 + ‖x‖) ^ (- (n : ℝ))) μ

open scoped Classical in
/-- An integer exponent `l` such that `(1 + ‖x‖) ^ (-l)` is integrable if `μ` has
temperate growth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TemperateGrowth/Variantbfd4cf56b1149ccb72cf460ccb12b17e74b05060fb2ef891183da4d6b2f9348b.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97ec26c2b3c796caa8e997a28d64d404f28af170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
