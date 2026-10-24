# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ec1fb131687d5c97312780620038ec90a4568a4c35268e48d399053590b520f",
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
  "slug": "instance--39fb93babcde34be1e6048d2",
  "source": {
    "blob": "478f82233b49ba7a8158637a819d0b92152e3ebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 443,
    "path": "GRWTSK/Algebra/ValuationRing/Variantd5720836e2d28a6642c5a009a45f99df7ce6b2f22bba4babc201dda736c01915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39fb93babcde34be1e6048d28654561bbba1cce26e9722cebae9770a6fa7d03d",
  "verification": {
    "reference": "docs/verification/Algebra/ValuationRing/Variantd5720836e2d28a6642c5a009a45f99df7ce6b2f22bba4babc201dda736c01915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ec1fb131687d5c97312780620038ec90a4568a4c35268e48d399053590b520f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) of_discreteValuationRing : ValuationRing A := by
  constructor
  intro a b
  by_cases ha : a = 0; · use 0; right; simp [ha]
  by_cases hb : b = 0; · use 0; left; simp [hb]
  obtain ⟨ϖ, hϖ⟩ := DiscreteValuationRing.exists_irreducible A
  obtain ⟨m, u, rfl⟩ := DiscreteValuationRing.eq_unit_mul_pow_irreducible ha hϖ
  obtain ⟨n, v, rfl⟩ := DiscreteValuationRing.eq_unit_mul_pow_irreducible hb hϖ
  cases' le_total m n with h h
  · use (u⁻¹ * v : Aˣ) * ϖ ^ (n - m); left
    simp_rw [mul_comm (u : A), Units.val_mul, ← mul_assoc, mul_assoc _ (u : A)]
    simp only [Units.mul_inv, mul_one, mul_comm _ (v : A), mul_assoc, ← pow_add]
    congr 2
    exact Nat.add_sub_of_le h
  · use (v⁻¹ * u : Aˣ) * ϖ ^ (m - n); right
    simp_rw [mul_comm (v : A), Units.val_mul, ← mul_assoc, mul_assoc _ (v : A)]
    simp only [Units.mul_inv, mul_one, mul_comm _ (u : A), mul_assoc, ← pow_add]
    congr 2
    exact Nat.add_sub_of_le h
#align valuation_ring.of_discrete_valuation_ring ValuationRing.of_discreteValuationRing

end

end ValuationRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ValuationRing/Variantd5720836e2d28a6642c5a009a45f99df7ce6b2f22bba4babc201dda736c01915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ValuationRing/Variantd5720836e2d28a6642c5a009a45f99df7ce6b2f22bba4babc201dda736c01915.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `478f82233b49ba7a8158637a819d0b92152e3ebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
