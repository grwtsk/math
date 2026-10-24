# multinomial_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c4dc590bd408a9699e6545c4a9b554970525e4c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 429,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ab479a852f378ce7a7206cd7ae49fb928d44142b06dba560eaba1a227a113a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39d96197-8628-2f07-c92d-dc061bf9da93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52f12fb5-8c15-c17b-29e2-cce335c2290c",
  "kind": "theorem",
  "lexical_name": "multinomial_cons",
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
  "slug": "multinomial-cons--a3485052de361ed4825ec245",
  "source": {
    "blob": "c4dc590bd408a9699e6545c4a9b554970525e4c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 429,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant9ab479a852f378ce7a7206cd7ae49fb928d44142b06dba560eaba1a227a113a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3485052de361ed4825ec2453befdabe9978c68c0a2ff29fe4be1927eb13e51e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant9ab479a852f378ce7a7206cd7ae49fb928d44142b06dba560eaba1a227a113a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52f12fb5-8c15-c17b-29e2-cce335c2290c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multinomial_cons (x : ℕ) (l : List ℕ) :
    (x :: l).multinomial = Nat.choose (x + l.sum) x * l.multinomial := by
  simp only [multinomial]
  rw [Finsupp.multinomial_update 0 (x :: l).toFinsupp]
  congr 1
  · congr
    exact List.toFinsupp_sum (x :: l)
  let succEmb : ℕ ↪ ℕ := addRightEmbedding 1
  have : (Finsupp.single 0 x + l.toFinsupp.embDomain succEmb).update 0 0 =
    (l.toFinsupp.embDomain succEmb).update 0 0 := by
    ext i
    by_cases hi : i = 0
    · simp [hi]
    · simp [Finsupp.update_apply, ite_eq_right hi, Finsupp.single_eq_of_ne hi]
  have h (x) : (l.toFinsupp.embDomain succEmb) (x + 1) = l[x]?.getD 0 := by
    rw [Finsupp.embDomain_apply, dite_eq_left ⟨x, by simp [succEmb]⟩]
    simp [succEmb]
  simp [toFinsupp_cons_eq_single_add_embDomain, Finsupp.multinomial_eq,
    succEmb, this, Nat.multinomial, h]

end List

namespace Multiset

/-- The `multinomial` coefficients on `Multiset ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant9ab479a852f378ce7a7206cd7ae49fb928d44142b06dba560eaba1a227a113a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Multinomial/Variant9ab479a852f378ce7a7206cd7ae49fb928d44142b06dba560eaba1a227a113a1.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4dc590bd408a9699e6545c4a9b554970525e4c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
