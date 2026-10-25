# one_le_mulHeight

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
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6cfae11d-8154-f71d-94d3-0ebeade6031d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0721a90e-0b4c-e85a-ee1b-4b077b10c161",
  "kind": "lemma",
  "lexical_name": "one_le_mulHeight",
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
  "slug": "one-le-mulheight--2abc4ae73608dfcd01659eb0",
  "source": {
    "blob": "509d6cc988e2f107bedb7dd54dee013acf099c31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 347,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2abc4ae73608dfcd01659eb0cafe24d72032c2d27dca69b929ccd7ea03d6ad57",
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

Occurrence: `result:0721a90e-0b4c-e85a-ee1b-4b077b10c161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma one_le_mulHeight (x : ι → K) : 1 ≤ mulHeight x := by
  rcases eq_or_ne x 0 with rfl | hx
  · simp
  obtain ⟨i, hi⟩ : ∃ i, x i ≠ 0 := ne_iff.mp hx
  have hx' : (x i)⁻¹ • x ≠ 0 := by simp [hi, hx]
  rw [← mulHeight_smul_eq_mulHeight _ <| inv_ne_zero hi, mulHeight_eq hx']
  refine one_le_mul_of_one_le_of_one_le (Multiset.one_le_prod_map fun v _ ↦ ?_) ?_
  · refine Finite.le_ciSup_of_le i <| le_of_eq ?_
    simpa using (inv_mul_cancel₀ <| v.ne_zero_iff.mpr hi).symm
  · refine one_le_finprod fun v ↦ Finite.le_ciSup_of_le i ?_
    simp [inv_mul_cancel₀ <| v.val.ne_zero_iff.mpr hi]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant94c50bd3a27a5eb0edca27b9465d1cc639b6a85d6c733179fc841864d642d4f2.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `509d6cc988e2f107bedb7dd54dee013acf099c31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
