# PrimitiveAdditiveTriple.freyResidueModel_c4_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51ddfa29-d80a-6d99-1228-c0923ee38ebc",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyResidueModel_c4_ne_zero",
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
  "slug": "primitiveadditivetriple-freyresiduemodel-c4-ne-zero--5514393b66eb1d7aa1c916f4",
  "source": {
    "blob": "8e62ba9766505dca08ca77670f77fa7637cf45e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 161,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5514393b66eb1d7aa1c916f49c7b37cc1e48759a5b9b6d9dc886d04be147bc9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51ddfa29-d80a-6d99-1228-c0923ee38ebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyResidueModel_c4_ne_zero
    (t : PrimitiveAdditiveTriple) (p : ℕ) [Fact p.Prime]
    (hp2 : p ≠ 2) (hd : p ∣ t.a * t.b * t.c) :
    (t.freyResidueModel p).c₄ ≠ 0 := by
  rw [t.freyResidueModel_c4]
  have hsum : (t.a : ZMod p) + (t.b : ZMod p) = (t.c : ZMod p) := by
    exact_mod_cast t.sum_eq
  have hz : (t.a : ZMod p) * (t.b : ZMod p) *
      ((t.a : ZMod p) + (t.b : ZMod p)) = 0 := by
    rw [hsum]
    have h := (ZMod.natCast_eq_zero_iff (t.a * t.b * t.c) p).mpr hd
    simpa only [Nat.cast_mul] using h
  exact frey_c4_ne_zero_of_product_zero (frey_two_ne_zero_mod p hp2)
    (t.freyResidueParameters_nonzero p) hz

/-- Integral nondivisibility formulation of the same c4 residue calculation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyLocalInvariants.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e62ba9766505dca08ca77670f77fa7637cf45e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
