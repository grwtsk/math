# logHeight₁_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "509d6cc988e2f107bedb7dd54dee013acf099c31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 881,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed73795a-1bd0-e66f-4b76-ae99ec51802d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:085ff859-3bbd-9293-e8e9-3da58af8545f",
  "kind": "lemma",
  "lexical_name": "logHeight₁_sum_le",
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
  "slug": "logheight-sum-le--541a93b64f482ef05da75096",
  "source": {
    "blob": "509d6cc988e2f107bedb7dd54dee013acf099c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 892,
    "line": 881,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:541a93b64f482ef05da75096e86b5cf75b0542f576078fc3939332aabd8d79b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:085ff859-3bbd-9293-e8e9-3da58af8545f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 881–892.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logHeight₁_sum_le {α : Type*} (s : Finset α) (x : α → K) :
    logHeight₁ (∑ a ∈ s, x a) ≤ (totalWeight K) * log #s + ∑ a ∈ s, logHeight₁ (x a) := by
  rcases s.eq_empty_or_nonempty with rfl | hs
  · simp
  simp only [logHeight₁_eq_log_mulHeight₁]
  have : ∀ a ∈ s, mulHeight₁ (x a) ≠ 0 := fun _ _ ↦ by positivity
  have : (#s : ℝ) ^ totalWeight K ≠ 0 := by simp [hs.ne_empty]
  pull (disch := first | assumption | positivity) log
  exact (log_le_log <| by positivity) <| mulHeight₁_sum_le hs x

/-- The multiplicative height of `-x` is the same as that of `x`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean#L881).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `509d6cc988e2f107bedb7dd54dee013acf099c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
