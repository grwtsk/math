# sectionPolynomial_roots_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a699811712a961d51d202ad29ff4b298997bdc9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9ccd18ed-17bd-8956-ccc7-bb00d7e4b092",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9718ca03-e621-5f3a-44be-c163935d2455",
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
  "slug": "sectionpolynomial-roots-sum--ad2aceb09d2bb05a1306ce59",
  "source": {
    "blob": "a699811712a961d51d202ad29ff4b298997bdc9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad2aceb09d2bb05a1306ce599aebc8b002bb44570b792c911b37383b70ec8cd8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9718ca03-e621-5f3a-44be-c163935d2455`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–170.

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

/-- Any strip containing every spectral zero must satisfy this rank-dependent source coefficient
inequality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/XiSectionObstruction/Variant0aca1ae75bcdcddbfd74366544904355f70f7cfaa9191344f0ab1f1de8cdcc20.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a699811712a961d51d202ad29ff4b298997bdc9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
