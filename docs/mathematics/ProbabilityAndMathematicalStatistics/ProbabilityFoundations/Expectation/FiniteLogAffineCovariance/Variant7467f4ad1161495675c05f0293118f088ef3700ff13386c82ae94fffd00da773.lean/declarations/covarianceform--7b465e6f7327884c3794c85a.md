# covarianceForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5310f6ae0757e9bdab84bcc441be9582f583fdd2b6b7c9238a609f435f64db98",
  "kind": "def",
  "lexical_name": "covarianceForm",
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
  "slug": "covarianceform--7b465e6f7327884c3794c85a",
  "source": {
    "blob": "52c648599eb2f7d2b49dd78fe5c27169a13c91a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 148,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b465e6f7327884c3794c85a64af4b69493491a0e7004515309393c1ac328e7b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5310f6ae0757e9bdab84bcc441be9582f583fdd2b6b7c9238a609f435f64db98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def covarianceForm (theta : E) : PositiveForm E where
  form u v :=
    ∑ i : I,
      F.probability theta i *
        F.centeredStatistic theta i u *
        F.centeredStatistic theta i v
  add_left x y z := by
    classical
    simp only [map_add]
    simp_rw [mul_add, add_mul]
    rw [Finset.sum_add_distrib]
  smul_left a x y := by
    classical
    simp only [map_smul, RingHom.id_apply, smul_eq_mul]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i hi
    ring
  add_right x y z := by
    classical
    simp only [map_add]
    simp_rw [mul_add]
    rw [Finset.sum_add_distrib]
  smul_right a x y := by
    classical
    simp only [map_smul, RingHom.id_apply, smul_eq_mul]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i hi
    ring
  symmetric x y := by
    classical
    apply Finset.sum_congr rfl
    intro i hi
    ring
  nonnegative x := by
    classical
    apply Finset.sum_nonneg
    intro i hi
    have h :=
      mul_nonneg (F.probability_nonnegative theta i)
        (sq_nonneg (F.centeredStatistic theta i x))
    simpa [pow_two, mul_assoc] using h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/FiniteLogAffineCovariance/Variant7467f4ad1161495675c05f0293118f088ef3700ff13386c82ae94fffd00da773.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c648599eb2f7d2b49dd78fe5c27169a13c91a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
