# valAux_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f0cbc85-d7d6-45e0-78df-f63c0671384d",
  "kind": "theorem",
  "lexical_name": "valAux_eq",
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
  "slug": "valaux-eq--5fc8f13fc2446efb492f3fec",
  "source": {
    "blob": "a9f86788f89f3faaff590ec0fb4a41110e75ac4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 561,
    "line": 544,
    "path": "GRWTSK/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fc8f13fc2446efb492f3fec975154111bd47dfe6c53e63a3ee3f05b247cf9ff",
  "verification": {
    "reference": "docs/verification/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f0cbc85-d7d6-45e0-78df-f63c0671384d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–561.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valAux_eq {f : PreTilt K v O hv p} {n : ℕ} (hfn : coeff _ _ n f ≠ 0) :
    valAux K v O hv p f = ModP.preVal K v O hv p (coeff _ _ n f) ^ p ^ n := by
  have h : ∃ n, coeff _ _ n f ≠ 0 := ⟨n, hfn⟩
  rw [valAux, dif_pos h]
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le (Nat.find_min' h hfn)
  induction' k with k ih
  · rfl
  obtain ⟨x, hx⟩ := Ideal.Quotient.mk_surjective (coeff _ _ (Nat.find h + k + 1) f)
  have h1 : (Ideal.Quotient.mk _ x : ModP K v O hv p) ≠ 0 := hx.symm ▸ hfn
  have h2 : (Ideal.Quotient.mk _ (x ^ p) : ModP K v O hv p) ≠ 0 := by
    erw [RingHom.map_pow, hx, ← RingHom.map_pow, coeff_pow_p]
    exact coeff_nat_find_add_ne_zero k
  erw [ih (coeff_nat_find_add_ne_zero k), ← hx, ← coeff_pow_p, RingHom.map_pow, ← hx,
    ← RingHom.map_pow, ModP.preVal_mk h1, ModP.preVal_mk h2, RingHom.map_pow, v.map_pow, ← pow_mul,
    pow_succ]
  rfl
#align pre_tilt.val_aux_eq PreTilt.valAux_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfection/Variantc7114a74fe22ad90e71aa3022d60ec4d5a46e327d3bcab4a246e3ad9070b5936.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9f86788f89f3faaff590ec0fb4a41110e75ac4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
