# first_transport_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef6c587e-00cc-02de-8ca8-d0d87bcb4ebe",
  "kind": "theorem",
  "lexical_name": "first_transport_identity",
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
  "slug": "first-transport-identity--d6556c96d0942d9d9908ee9e",
  "source": {
    "blob": "df1f82b19ed6865c65f5fefd4c8dfde1a4a33af0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 183,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6556c96d0942d9d9908ee9e8e415e71eaef87638697342111db7ae59216b7a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef6c587e-00cc-02de-8ca8-d0d87bcb4ebe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_transport_identity (c b d : ι → ℝ) (f g : ℝ → ℝ)
    (P : ι → ι → ℝ)
    (hb : ∀ i, b i = (∑ j, P i j) - ∑ j, P j i) :
    readout c b d f g =
      (∑ i, ∑ j, P i j * (f (c i) - f (c j) - (c i - c j) * g (c j))) +
      ∑ j, inducedDrift c d P j * g (c j) := by
  unfold readout inducedDrift
  simp_rw [hb, sub_mul, mul_sub, add_mul]
  simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib, Finset.sum_mul]
  rw [Finset.sum_comm (f := fun i j => P j i * f (c i)),
    Finset.sum_comm (f := fun j i => P i j * (c i - c j) * g (c j))]
  ring

/-- Both affine identities force total induced drift zero, not receiverwise zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransport/Variantd179d33f0b602b49c6a0f01201d143da8159edd04cc8a7e800393076bb42d59c.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1f82b19ed6865c65f5fefd4c8dfde1a4a33af0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
