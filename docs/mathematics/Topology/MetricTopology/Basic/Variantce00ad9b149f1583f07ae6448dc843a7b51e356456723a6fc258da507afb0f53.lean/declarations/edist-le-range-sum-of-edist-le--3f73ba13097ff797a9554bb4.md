# edist_le_range_sum_of_edist_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0217972d-ba76-2a00-c0ec-e1e5377e92fb",
  "kind": "theorem",
  "lexical_name": "edist_le_range_sum_of_edist_le",
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
  "slug": "edist-le-range-sum-of-edist-le--3f73ba13097ff797a9554bb4",
  "source": {
    "blob": "39db534dade6877fb4888a6c73ccb7f32be05d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 70,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f73ba13097ff797a9554bb42ed014b0b79a6d6408ee4189c089d60d6326e0f4",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0217972d-ba76-2a00-c0ec-e1e5377e92fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_le_range_sum_of_edist_le {f : ℕ → α} (n : ℕ) {d : ℕ → ℝ≥0∞}
    (hd : ∀ {k}, k < n → edist (f k) (f (k + 1)) ≤ d k) :
    edist (f 0) (f n) ≤ ∑ i ∈ Finset.range n, d i :=
  Nat.Ico_zero_eq_range n ▸ edist_le_Ico_sum_of_edist_le zero_le fun _ => hd

namespace EMetric

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variantce00ad9b149f1583f07ae6448dc843a7b51e356456723a6fc258da507afb0f53.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39db534dade6877fb4888a6c73ccb7f32be05d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
