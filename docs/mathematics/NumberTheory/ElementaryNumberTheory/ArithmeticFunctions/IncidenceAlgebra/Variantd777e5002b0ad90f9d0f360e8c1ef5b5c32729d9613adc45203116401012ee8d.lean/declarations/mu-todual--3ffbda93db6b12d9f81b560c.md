# mu_toDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d583e24b-3fee-a726-66d1-737ddbba7daf",
  "kind": "lemma",
  "lexical_name": "mu_toDual",
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
  "slug": "mu-todual--3ffbda93db6b12d9f81b560c",
  "source": {
    "blob": "42479a7ca982e93ff74a45317b33e66766138651",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 533,
    "line": 513,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ffbda93db6b12d9f81b560c49b32975e115f5b224390c13766f01622c10c953",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d583e24b-3fee-a726-66d1-737ddbba7daf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–533.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mu_toDual (a b : α) : mu 𝕜 (toDual a) (toDual b) = mu 𝕜 b a := by
  let : DecidableLE α := Classical.decRel _
  let mud : IncidenceAlgebra 𝕜 αᵒᵈ :=
    { toFun := fun a b ↦ mu 𝕜 (ofDual b) (ofDual a)
      eq_zero_of_not_le' := fun a b hab ↦ apply_eq_zero_of_not_le (by exact hab) _ }
  suffices mu 𝕜 = mud by simp_rw [this, mud, coe_mk, ofDual_toDual]
  suffices mud * zeta 𝕜 = 1 by
    rw [← mu_mul_zeta] at this
    apply_fun (· * mu 𝕜) at this
    symm
    simpa [mul_assoc, zeta_mul_mu] using this
  clear a b
  ext a b
  simp only [mul_boole, one_apply, mul_apply, zeta_apply]
  calc
    ∑ x ∈ Icc a b, (if x ≤ b then mud a x else 0) = ∑ x ∈ Icc a b, mud a x := by
      congr! with x hx; exact ite_eq_left (mem_Icc.1 hx).2
    _ = ∑ x ∈ Icc (ofDual b) (ofDual a), mu 𝕜 x (ofDual a) := by simp [Icc_orderDual_def, mud]
    _ = if ofDual b = ofDual a then 1 else 0 := sum_Icc_mu_left ..
    _ = if a = b then 1 else 0 := by simp [eq_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42479a7ca982e93ff74a45317b33e66766138651` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
