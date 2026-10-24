# prefixFunctionRecurrence_eq_prefixFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69dcabad9a4acdbff59ede3becc2a23b932a3639",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e43fd1e4-bd4e-ecda-029a-ff00c37faf44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0fed1f5-66f0-5a38-69da-e0bc8e8ba7c8",
  "kind": "theorem",
  "lexical_name": "prefixFunctionRecurrence_eq_prefixFunction",
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
  "slug": "prefixfunctionrecurrence-eq-prefixfunction--370dfae011b0cafbb5392a69",
  "source": {
    "blob": "69dcabad9a4acdbff59ede3becc2a23b932a3639",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 244,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:370dfae011b0cafbb5392a69fea66c314c98297eb0e0e616797adea76f99b020",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0fed1f5-66f0-5a38-69da-e0bc8e8ba7c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prefixFunctionRecurrence_eq_prefixFunction {pat : ByteArray} {stackPos : Nat}
    {hst : stackPos < pat.size} {guess : Nat} {hg : guess < stackPos}
    (h : prefixFunction pat stackPos (by omega) ≤ guess + 1)
    (hpa : PartialMatch pat pat guess stackPos) :
    prefixFunctionRecurrence pat stackPos hst guess hg = prefixFunction pat stackPos hst := by
  fun_induction prefixFunctionRecurrence with
  | case1 g hg heq =>
    refine Std.le_antisymm (le_prefixFunction_iff.2 ⟨g + 1, Nat.le_refl _, by omega, ?_⟩) h
    exact partialMatch_add_one_add_one_iff.2 ⟨hpa, ⟨_, _, heq⟩⟩
  | case2 hg h' =>
    simp only [eq_comm (a := 0)]
    suffices prefixFunction pat stackPos hst ≠ 1 by omega
    intro heq
    rw [prefixFunction_eq_iff] at heq
    simp [heq.2.1.getElem_eq 0 Nat.zero_lt_one] at h'
  | case3 g hg heq hg₀ hlt ih =>
    apply ih
    · simp only [prefixFunction_le_iff]
      refine fun k h hk' hpart => ?_
      have hpx := hpart.le_prefixFunction (by omega) (by omega)
      simp only [Nat.add_one_sub_one] at hpx
      rw [(by omega : k = k - 1 + 1), partialMatch_add_one_add_one_iff] at hpart
      obtain ⟨hp₁, ⟨_, _, hp₂⟩⟩ := hpart
      have := hpa.partialMatch_iff.2 ⟨by omega, hp₁⟩
      have := this.le_prefixFunction (by omega)
      suffices k - 1 ≠ g by omega
      rintro rfl
      simp [hp₂] at heq
    · exact (hpa.partialMatch_iff.1 (partialMatch_prefixFunction_sub_one (by omega))).2

/-- Predicate that an array is a correct precomputation of the prefix function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant979ff9cc471ad60cf6935bb105198b2db7a9aff98ce23f45762a7ee2e5f0bd11.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69dcabad9a4acdbff59ede3becc2a23b932a3639` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
