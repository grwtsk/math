# actual_logProfile_eq_log_mul_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8312586a-0b28-4e26-625b-3a83fecf4ac9",
  "kind": "theorem",
  "lexical_name": "actual_logProfile_eq_log_mul_product",
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
  "slug": "actual-logprofile-eq-log-mul-product--6491ca237a7d5b0dc09a8ccf",
  "source": {
    "blob": "aecb2aa5253778e26a05be92e95feeeaf9833158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6491ca237a7d5b0dc09a8ccf17637638cae3abf8fc0169dd16d21f511a399791",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8312586a-0b28-4e26-625b-3a83fecf4ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logProfile_eq_log_mul_product (A : ℝ) (d m : ℕ) (hd : 0 < d) (hm : 0 < m) :
    logProfile A (d : ℝ) (m : ℝ) = Real.log (m : ℝ) * plainProfile A 1 ((d * m : ℕ) : ℝ) := by
  have hdp : 0 < (d : ℝ) := by exact_mod_cast hd
  have hmp : 0 < (m : ℝ) := by exact_mod_cast hm
  have hprod : 0 < ((d * m : ℕ) : ℝ) := by exact_mod_cast Nat.mul_pos hd hm
  rw [logProfile_eq_log_mul, plainProfile_eq_of_pos A (d : ℝ) hmp,
    sourcePlainSamplingTerm_eq_source_weight A hdp hmp, plainProfile_eq_of_pos A 1 hprod,
    sourcePlainSamplingTerm_eq_source_weight A (by norm_num : (0 : ℝ) < 1) hprod]
  simp only [Nat.cast_mul, one_mul]

/-- The real quotient floor is exactly the quotient of the original upper floor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/7a35f37001d1e2c29adeSourceFullDivisorLogInventory/Variantdf8353f79d8ef1a92c34dd84cd5b19772401a59070bbe47a76e6ba5931e32d50.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aecb2aa5253778e26a05be92e95feeeaf9833158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
