# BalanceGauge.product_act

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:783bf82b-52b2-d3c1-8d25-5b996468e866",
  "kind": "theorem",
  "lexical_name": "BalanceGauge.product_act",
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
  "slug": "balancegauge-product-act--753f3eee2729a262b0e5b743",
  "source": {
    "blob": "39c3a45e4ff7f8cff730f33bacfdae80ae633d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant48e5d51be9fbbb314c5e5059406e2cad8c3fd0ba94fd0fd69067a72e64bda32f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:753f3eee2729a262b0e5b743e93d0f8122d5d1a9e1d01893c01f228b058de898",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant48e5d51be9fbbb314c5e5059406e2cad8c3fd0ba94fd0fd69067a72e64bda32f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:783bf82b-52b2-d3c1-8d25-5b996468e866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BalanceGauge.product_act
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    {cut : Finset Prime}
    (gauge : BalanceGauge (Symbol := Symbol) cut)
    (allocation : Prime → Symbol) :
    ∏ prime ∈ cut, gauge.act allocation prime =
      ∏ prime ∈ cut, allocation prime := by
  simp only [BalanceGauge.act]
  rw [Finset.prod_mul_distrib, gauge.product_one,
    one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant48e5d51be9fbbb314c5e5059406e2cad8c3fd0ba94fd0fd69067a72e64bda32f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BalanceGauge/Variant48e5d51be9fbbb314c5e5059406e2cad8c3fd0ba94fd0fd69067a72e64bda32f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39c3a45e4ff7f8cff730f33bacfdae80ae633d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
