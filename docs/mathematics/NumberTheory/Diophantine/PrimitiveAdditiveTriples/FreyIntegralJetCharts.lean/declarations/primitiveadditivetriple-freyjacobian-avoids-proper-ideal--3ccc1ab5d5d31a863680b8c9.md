# PrimitiveAdditiveTriple.freyJacobian_avoids_proper_ideal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a26df53a-34e2-8798-d308-36538fad0417",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyJacobian_avoids_proper_ideal",
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
  "slug": "primitiveadditivetriple-freyjacobian-avoids-proper-ideal--3ccc1ab5d5d31a863680b8c9",
  "source": {
    "blob": "d0921d583705c3b381c4a4ee70bd5655a2c4c3ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ccc1ab5d5d31a863680b8c95c7a2c19b778b0c3e1e4c715cc9953ad483f31c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a26df53a-34e2-8798-d308-36538fad0417`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyJacobian_avoids_proper_ideal
    (t : PrimitiveAdditiveTriple) {A : Type*} [CommRing A]
    (f : ℤ →+* A) (I : Ideal A) (hI : I ≠ ⊤) :
    ∃ i : Fin 3, f (t.freyPortJacobian i) ∉ I := by
  classical
  by_contra hn
  have hall : ∀ i : Fin 3, f (t.freyPortJacobian i) ∈ I := by
    simpa only [not_exists, not_not] using hn
  have h := congrArg f t.freyJacobian_partition_one
  simp only [map_add, map_mul, map_pow, map_sub, map_one] at h
  have h1 : (1 : A) ∈ I := by
    rw [← h]
    exact I.add_mem
      (I.add_mem (I.mul_mem_left _ (hall 0)) (I.mul_mem_left _ (hall 1)))
      (I.mul_mem_left _ (hall 2))
  exact hI (Ideal.eq_top_iff_one.mpr h1)

/-- Actual coefficient chart; only powers of the source Jacobian are inverted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0921d583705c3b381c4a4ee70bd5655a2c4c3ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
