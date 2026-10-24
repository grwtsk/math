# sourceVector_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb029b79-d1ba-1272-a044-977f5e38baa2",
  "kind": "theorem",
  "lexical_name": "sourceVector_support",
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
  "slug": "sourcevector-support--81faa80547c441b908070e12",
  "source": {
    "blob": "000c12c3e6659e36877d97c9f6a932820ee538dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceEnergy/Variant98175118356af27b64830d529fab0ef40302fee56d56f79f786df69570988cad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81faa80547c441b908070e12f66cc39c50db47409e97f92d81d1307b7b6ee98c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceEnergy/Variant98175118356af27b64830d529fab0ef40302fee56d56f79f786df69570988cad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb029b79-d1ba-1272-a044-977f5e38baa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceVector_support {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    Function.support (sourceVector A t) ⊆ Ioc (-A) (3 * A) := by
  intro x hx
  by_contra hnot
  have hz : sourceVector A t x = 0 := by
    unfold sourceVector
    apply Finset.sum_eq_zero
    intro n hn
    have hl := inventory_log_bounds hn
    have hxoutside : A ≤ |x - Real.log n| := by
      simp only [mem_Ioc, not_and_or, not_lt, not_le] at hnot
      rcases hnot with hlo | hhi
      · have hab := neg_le_abs (x - Real.log n)
        linarith
      · have hab := le_abs_self (x - Real.log n)
        linarith
    rw [prescribedSource_eq A hA,
      CorrelationRegularity.normalizedTest_zero_of_le_abs A _ (by linarith) hxoutside, mul_zero]
  exact hx hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceEnergy/Variant98175118356af27b64830d529fab0ef40302fee56d56f79f786df69570988cad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceEnergy/Variant98175118356af27b64830d529fab0ef40302fee56d56f79f786df69570988cad.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `000c12c3e6659e36877d97c9f6a932820ee538dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
