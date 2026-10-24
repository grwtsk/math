# actualNormalizedMangoldtExpReadout_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7727274e-461a-b4c3-4a88-11da1c523e7a",
  "kind": "theorem",
  "lexical_name": "actualNormalizedMangoldtExpReadout_one",
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
  "slug": "actualnormalizedmangoldtexpreadout-one--7ff74409b45da05c6b8719cc",
  "source": {
    "blob": "4a4eaf25db1f0d73fda375d01580a23aab019f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 206,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant74b752df738b1875c2b1509f84d0e7ac887b78d30c17b2bae515d285adc2b395.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ff74409b45da05c6b8719ccf1d1d4aefd57c9d320ed3b3a5ee234f7e3b87542",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant74b752df738b1875c2b1509f84d0e7ac887b78d30c17b2bae515d285adc2b395.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7727274e-461a-b4c3-4a88-11da1c523e7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNormalizedMangoldtExpReadout_one {t : ℝ} (ht : 0 ≤ t) :
    actualNormalizedMangoldtExpReadout 1 t = Real.exp (-t) * Chebyshev.psi (Real.exp t) := by
  unfold actualNormalizedMangoldtExpReadout
  rw [logSum_eq_closed t ht]
  simp only [one_mul, neg_mul]
  unfold Chebyshev.psi
  congr 1
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Ioc.mp hn).1
  rw [Real.exp_log hn0]
  field_simp

/-- The half-damping test retains every original closed Mangoldt half atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant74b752df738b1875c2b1509f84d0e7ac887b78d30c17b2bae515d285adc2b395.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Variant74b752df738b1875c2b1509f84d0e7ac887b78d30c17b2bae515d285adc2b395.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a4eaf25db1f0d73fda375d01580a23aab019f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
