# moebius_weighted_sum_eq_coprime_classes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34d4f4f159ea1e60c3206c2f8dd6850030546af6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:664d0164-d98c-2132-fd5d-2af3aee534c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8c8c7fa5-133e-f3f6-ead2-40aafb7cfc5e",
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
  "slug": "moebius-weighted-sum-eq-coprime-classes--9fb225468c4740764c5974d7",
  "source": {
    "blob": "34d4f4f159ea1e60c3206c2f8dd6850030546af6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 99,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb225468c4740764c5974d740d98d36b8a3178dad7fc1dd868877b36b5baaea",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c8c7fa5-133e-f3f6-ead2-40aafb7cfc5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–125.

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

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantd11a1211a96883b49a06b0b823c24bccb86fb684568fc97bf3da6cdb786d7dec.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34d4f4f159ea1e60c3206c2f8dd6850030546af6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
