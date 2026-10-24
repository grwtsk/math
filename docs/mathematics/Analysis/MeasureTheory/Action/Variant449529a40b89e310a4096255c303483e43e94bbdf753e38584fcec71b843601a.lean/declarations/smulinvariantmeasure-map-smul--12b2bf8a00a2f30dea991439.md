# smulInvariantMeasure_map_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89fab549135f69dfe21f134ba0fa828bb3405d5b466cd7a0c6336a01964b6fc0",
  "kind": "instance",
  "lexical_name": "smulInvariantMeasure_map_smul",
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
  "slug": "smulinvariantmeasure-map-smul--12b2bf8a00a2f30dea991439",
  "source": {
    "blob": "5747e3941b04d464062cd1a57324a0db6586715f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 227,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12b2bf8a00a2f30dea9914392025a89a3aeac77a7931350435f3fa7f2c9b0c56",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89fab549135f69dfe21f134ba0fa828bb3405d5b466cd7a0c6336a01964b6fc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smulInvariantMeasure_map_smul [SMul M α] [SMul N α] [SMulCommClass N M α]
    [MeasurableConstSMul M α] [MeasurableConstSMul N α]
    (μ : Measure α) [SMulInvariantMeasure M α μ] (n : N) :
    SMulInvariantMeasure M α (map (n • ·) μ) :=
  smulInvariantMeasure_map μ _ (smul_comm n) <| measurable_const_smul _

end SMulHomClass

variable (G) {m : MeasurableSpace α} [Group G] [MulAction G α] (μ : Measure α)

variable [MeasurableConstSMul G α] in
/-- Equivalent definitions of a measure invariant under a multiplicative action of a group.

0. `SMulInvariantMeasure G α μ`;

1. for every `c : G` and a measurable set `s`, the measure of the preimage of `s` under scalar
  multiplication by `c` is equal to the measure of `s`;

2. for every `c : G` and a measurable set `s`, the measure of the image `c • s` of `s` under
  scalar multiplication by `c` is equal to the measure of `s`;

3. property 1 for any set, including non-measurable ones;
4. property 2 for any set, including non-measurable ones;

5. for any `c : G`, scalar multiplication by `c` maps `μ` to `μ`;

6. for any `c : G`, scalar multiplication by `c` is a measure-preserving map. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variant449529a40b89e310a4096255c303483e43e94bbdf753e38584fcec71b843601a.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5747e3941b04d464062cd1a57324a0db6586715f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
