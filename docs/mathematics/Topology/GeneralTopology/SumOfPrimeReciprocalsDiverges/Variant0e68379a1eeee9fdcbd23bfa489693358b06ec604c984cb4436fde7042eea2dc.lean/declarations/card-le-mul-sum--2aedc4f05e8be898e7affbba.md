# card_le_mul_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "914eeefba8a811f4f62245705a7b2de19437d216",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f6b4f4a-fea9-adfb-4c53-a7202172361c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04c41ec4-e228-3b69-ff19-e5abb38c5346",
  "kind": "theorem",
  "lexical_name": "card_le_mul_sum",
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
  "slug": "card-le-mul-sum--2aedc4f05e8be898e7affbba",
  "source": {
    "blob": "914eeefba8a811f4f62245705a7b2de19437d216",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aedc4f05e8be898e7affbba36612d28c2d22c4aafe041c0a4114ed9425bed7b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04c41ec4-e228-3b69-ff19-e5abb38c5346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_mul_sum {x k : ℕ} : #(U x k) ≤ x * ∑ p ∈ P x k, 1 / (p : ℝ) := by
  let P := {p ∈ range (x + 1) | k < p ∧ p.Prime}
  let N p := {e ∈ range x | p ∣ e + 1}
  have h : #(P.biUnion N) ≤ ∑ p ∈ P, #(N p) := card_biUnion_le
  calc
    (#(P.biUnion N) : ℝ) ≤ ∑ p ∈ P, (#(N p) : ℝ) := by assumption_mod_cast
    _ ≤ ∑ p ∈ P, x * (1 / (p : ℝ)) := sum_le_sum fun p _ => ?_
    _ = x * ∑ p ∈ P, 1 / (p : ℝ) := by rw [mul_sum]
  simp only [N, mul_one_div, Nat.card_multiples, Nat.cast_div_le]

/--
The number of `e < x` for which `e + 1` is a squarefree product of primes smaller than or equal to
`k` is bounded by `2 ^ k`, the number of subsets of `[1, k]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `914eeefba8a811f4f62245705a7b2de19437d216` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
