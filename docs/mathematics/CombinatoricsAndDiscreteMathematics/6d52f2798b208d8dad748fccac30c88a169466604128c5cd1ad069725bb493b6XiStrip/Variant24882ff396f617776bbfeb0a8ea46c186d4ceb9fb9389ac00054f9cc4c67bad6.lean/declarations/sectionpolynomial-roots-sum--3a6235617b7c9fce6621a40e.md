# sectionPolynomial_roots_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ccb3ecb-8362-0955-6b9f-bcb43b2267cf",
  "kind": "theorem",
  "lexical_name": "sectionPolynomial_roots_sum",
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
  "slug": "sectionpolynomial-roots-sum--3a6235617b7c9fce6621a40e",
  "source": {
    "blob": "2b87ee2ccfaf6e23cd6041cee9aee4e28eef79cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant24882ff396f617776bbfeb0a8ea46c186d4ceb9fb9389ac00054f9cc4c67bad6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a6235617b7c9fce6621a40eb159d80829566e36bddf673e1e4120624963e633",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant24882ff396f617776bbfeb0a8ea46c186d4ceb9fb9389ac00054f9cc4c67bad6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ccb3ecb-8362-0955-6b9f-bcb43b2267cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sectionPolynomial_roots_sum (n : ℕ) :
    (sectionPolynomial (n + 1)).roots.sum =
      -((coefficient n / coefficient (n + 1) : ℝ) : ℂ) := by
  have h := Polynomial.coeff_eq_esymm_roots_of_splits
    (IsAlgClosed.splits (sectionPolynomial (n + 1)))
    (k := n) (by rw [sectionPolynomial_natDegree]; omega)
  rw [sectionPolynomial_coeff _ _ (by omega), sectionPolynomial_natDegree,
    sectionPolynomial_leadingCoeff] at h
  simp only [Nat.add_sub_cancel_left, pow_one, mul_neg_one, esymm_one_eq_sum] at h
  have ha : (coefficient (n + 1) : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr
    (coefficient_positive_of_thetaCoefficientFormula thetaCoefficientFormula (n + 1)).ne'
  push_cast
  field_simp
  linear_combination h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant24882ff396f617776bbfeb0a8ea46c186d4ceb9fb9389ac00054f9cc4c67bad6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/6d52f2798b208d8dad748fccac30c88a169466604128c5cd1ad069725bb493b6XiStrip/Variant24882ff396f617776bbfeb0a8ea46c186d4ceb9fb9389ac00054f9cc4c67bad6.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b87ee2ccfaf6e23cd6041cee9aee4e28eef79cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
