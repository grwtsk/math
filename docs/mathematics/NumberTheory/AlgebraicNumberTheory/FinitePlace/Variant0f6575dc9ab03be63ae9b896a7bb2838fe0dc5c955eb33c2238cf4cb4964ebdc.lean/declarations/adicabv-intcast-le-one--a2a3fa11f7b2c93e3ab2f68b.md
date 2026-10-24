# adicAbv_intCast_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a92580e2-0e90-dcbf-6f3f-f45b3aae2b88",
  "kind": "theorem",
  "lexical_name": "adicAbv_intCast_le_one",
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
  "slug": "adicabv-intcast-le-one--a2a3fa11f7b2c93e3ab2f68b",
  "source": {
    "blob": "68aafb0457993edf375efd376cf30cdcb82c5e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 186,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2a3fa11f7b2c93e3ab2f68b4054055c4b36233fbf0079546bcb8ea6129ff506",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a92580e2-0e90-dcbf-6f3f-f45b3aae2b88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adicAbv_intCast_le_one (n : ℤ) : adicAbv K v n ≤ 1 :=
  (isNonarchimedean_adicAbv K v).apply_intCast_le_one (map_zero_le (adicAbv K v) 1)
  (map_one (adicAbv K v)) (map_neg_eq_map (adicAbv K v))


set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.RingOfIntegers.HeightOneSpectrum.one_lt_absNorm := one_lt_absNorm
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.RingOfIntegers.HeightOneSpectrum.one_lt_absNorm := one_lt_absNorm
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.RingOfIntegers.HeightOneSpectrum.one_lt_absNorm_nnreal := one_lt_absNorm_nnreal
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.RingOfIntegers.HeightOneSpectrum.one_lt_absNorm_nnreal :=
  one_lt_absNorm_nnreal
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.RingOfIntegers.HeightOneSpectrum.absNorm_ne_zero := absNorm_ne_zero
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.RingOfIntegers.HeightOneSpectrum.absNorm_ne_zero := absNorm_ne_zero
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv := adicAbv
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv := adicAbv
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv_def := adicAbv_def
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv_def := adicAbv_def
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.RingOfIntegers.HeightOneSpectrum.isNonarchimedean_adicAbv :=
  isNonarchimedean_adicAbv
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.RingOfIntegers.HeightOneSpectrum.isNonarchimedean_adicAbv :=
  isNonarchimedean_adicAbv
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.instRankOneAdicCompletion := instRankOneAdicCompletion
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.instRankOneAdicCompletion := instRankOneAdicCompletion
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.instNormedFieldValuedAdicCompletion := instNormedFieldValuedAdicCompletion
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.instNormedFieldValuedAdicCompletion := instNormedFieldValuedAdicCompletion
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.rankOne_hom'_def := rankOne_hom'_def
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.rankOne_hom'_def := rankOne_hom'_def
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.toNNReal_valued_eq_adicAbv := toNNReal_valued_eq_adicAbv
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.toNNReal_valued_eq_adicAbv := toNNReal_valued_eq_adicAbv
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv_add_le_max := adicAbv_add_le_max
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv_add_le_max := adicAbv_add_le_max
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv_natCast_le_one := adicAbv_natCast_le_one
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv_natCast_le_one :=
  adicAbv_natCast_le_one
set_option linter.dupNamespace false in
@[deprecated (since := "2026-03-11")]
alias NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv_intCast_le_one := adicAbv_intCast_le_one
@[deprecated (since := "2026-03-11")]
alias _root_.NumberField.RingOfIntegers.HeightOneSpectrum.adicAbv_intCast_le_one :=
  adicAbv_intCast_le_one

end HeightOneSpectrum

open HeightOneSpectrum Valuation.IsRankOneDiscrete

/-- The norm of an element in the `v`-adic completion of `K`. See `FinitePlace.norm_embedding`
for the equality involving `‖embedding v x‖` on the LHS. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FinitePlace/Variant0f6575dc9ab03be63ae9b896a7bb2838fe0dc5c955eb33c2238cf4cb4964ebdc.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68aafb0457993edf375efd376cf30cdcb82c5e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
