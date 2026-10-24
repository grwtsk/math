# moebius_weighted_sum_eq_coprime_classes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d49d7c44-2048-78a9-5f95-b288289d4819",
  "kind": "theorem",
  "lexical_name": "moebius_weighted_sum_eq_coprime_classes",
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
  "slug": "moebius-weighted-sum-eq-coprime-classes--d9ca4fd5a3967365f0cb693d",
  "source": {
    "blob": "1e3bf19ad6ff9bd4d871794742d4508966186524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 107,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9ca4fd5a3967365f0cb693d8982bf0124da4b86e7677444c166e19804c4e2b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d49d7c44-2048-78a9-5f95-b288289d4819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebius_weighted_sum_eq_coprime_classes (N : ℕ) (E : ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, ∑ e ∈ Icc 1 N,
      (ArithmeticFunction.moebius d : ℝ) * (ArithmeticFunction.moebius e : ℝ) * E (d * e)) =
      ∑ p ∈ coprimePairs N, (ArithmeticFunction.moebius (p.1 * p.2) : ℝ) *
        ∑ g ∈ Icc 1 (N / max p.1 p.2), (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g (p.1 * p.2) then 1 else 0) * E ((p.1 * p.2) * g ^ 2) := by
  rw [sum_eq_coprime_classes]
  apply sum_congr rfl
  intro p hp
  have hprod (g : ℕ) : (g * p.1) * (g * p.2) = (p.1 * p.2) * g ^ 2 := by ring
  simp_rw [hprod]
  exact MobiusRatio.weighted_ratio_sum_eq _ E p.1 p.2 (mem_filter.mp hp).2

end
end GcdClassTransportScratch

#print axioms GcdClassTransportScratch.coprimePairs
#print axioms GcdClassTransportScratch.gcdClasses
#print axioms GcdClassTransportScratch.splitPair
#print axioms GcdClassTransportScratch.joinClass
#print axioms GcdClassTransportScratch.splitPair_mem
#print axioms GcdClassTransportScratch.joinClass_mem
#print axioms GcdClassTransportScratch.joinClass_splitPair
#print axioms GcdClassTransportScratch.splitPair_joinClass
#print axioms GcdClassTransportScratch.sum_eq_coprime_classes
#print axioms GcdClassTransportScratch.moebius_weighted_sum_eq_coprime_classes
#check GcdClassTransportScratch.moebius_weighted_sum_eq_coprime_classes
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e3bf19ad6ff9bd4d871794742d4508966186524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
