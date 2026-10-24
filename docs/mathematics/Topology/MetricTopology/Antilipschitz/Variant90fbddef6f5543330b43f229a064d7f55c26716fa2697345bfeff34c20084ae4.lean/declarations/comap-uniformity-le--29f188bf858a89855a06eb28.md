# comap_uniformity_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77a8cddb-a507-5f34-df0b-b0b7597f1260",
  "kind": "theorem",
  "lexical_name": "comap_uniformity_le",
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
  "slug": "comap-uniformity-le--29f188bf858a89855a06eb28",
  "source": {
    "blob": "fe6af169b9315c13051834b06a4865e1fcde3981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 171,
    "path": "GRWTSK/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29f188bf858a89855a06eb2839de9774fbf8357265160060658f76b122e8f6a5",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77a8cddb-a507-5f34-df0b-b0b7597f1260`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_uniformity_le (hf : AntilipschitzWith K f) : (𝓤 β).comap (Prod.map f f) ≤ 𝓤 α := by
  refine ((uniformity_basis_edist.comap _).le_basis_iff uniformity_basis_edist).2 fun ε h₀ => ?_
  refine ⟨(↑K)⁻¹ * ε, ENNReal.mul_pos (ENNReal.inv_ne_zero.2 ENNReal.coe_ne_top) h₀.ne', ?_⟩
  refine' fun x hx => (hf x.1 x.2).trans_lt _
  rw [mul_comm, ← div_eq_mul_inv] at hx
  rw [mul_comm]
  exact ENNReal.mul_lt_of_lt_div hx
#align antilipschitz_with.comap_uniformity_le AntilipschitzWith.comap_uniformity_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Antilipschitz/Variant90fbddef6f5543330b43f229a064d7f55c26716fa2697345bfeff34c20084ae4.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe6af169b9315c13051834b06a4865e1fcde3981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
