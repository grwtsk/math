# add_choose_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e34fd767-5b0b-66ba-d04c-8a87b99f9083",
  "kind": "theorem",
  "lexical_name": "add_choose_eq",
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
  "slug": "add-choose-eq--79e245147b1fac849ae1f843",
  "source": {
    "blob": "c57269dd00db4f80d58a1c70cd0d803ddee0c7a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 527,
    "path": "GRWTSK/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79e245147b1fac849ae1f843f865059b69278750213da9bc84260574291c9b75",
  "verification": {
    "reference": "docs/verification/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e34fd767-5b0b-66ba-d04c-8a87b99f9083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 527–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_choose_eq [Ring R] [BinomialRing R] {r s : R} (k : ℕ) (h : Commute r s) :
    choose (r + s) k =
      ∑ ij ∈ antidiagonal k, choose r ij.1 * choose s ij.2 := by
  rw [← nsmul_right_inj (Nat.factorial_ne_zero k),
    ← descPochhammer_eq_factorial_smul_choose, smul_sum, descPochhammer_smeval_add _ h]
  refine sum_congr rfl ?_
  intro x hx
  rw [← Nat.choose_mul_factorial_mul_factorial (HasAntidiagonal.antidiagonal.fst_le hx),
    tsub_eq_of_eq_add_rev (List.Nat.mem_antidiagonal.mp hx).symm, mul_assoc, nsmul_eq_mul,
    Nat.cast_mul, Nat.cast_mul, ← mul_assoc _ (x.1.factorial : R), mul_assoc _ (x.2.factorial : R),
    ← mul_assoc (x.2.factorial : R), Nat.cast_commute x.2.factorial,
    mul_assoc _ (x.2.factorial : R), ← nsmul_eq_mul x.2.factorial]
  simp [mul_assoc, descPochhammer_eq_factorial_smul_choose]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Binomial/Variant36c4cb9e3b171d2eaad308a77d43c75fbe5abbec37b905fca0be8f9cf2d01d5e.lean#L527).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57269dd00db4f80d58a1c70cd0d803ddee0c7a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
