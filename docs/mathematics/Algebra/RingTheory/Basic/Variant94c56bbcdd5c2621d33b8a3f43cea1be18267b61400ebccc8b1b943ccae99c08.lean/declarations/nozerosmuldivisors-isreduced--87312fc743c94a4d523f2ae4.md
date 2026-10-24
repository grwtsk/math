# NoZeroSMulDivisors.isReduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ee1ef32222097e8a6385676554066fd2d1a549f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78f75b8f-f18f-4250-cb09-68e09cb80699",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:464532dc-f1cd-67d0-a39d-d513a5105ec3",
  "kind": "lemma",
  "lexical_name": "NoZeroSMulDivisors.isReduced",
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
  "slug": "nozerosmuldivisors-isreduced--87312fc743c94a4d523f2ae4",
  "source": {
    "blob": "5ee1ef32222097e8a6385676554066fd2d1a549f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 222,
    "path": "GRWTSK/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87312fc743c94a4d523f2ae41edb6684d1383f4efb43459aee5f47244d348614",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:464532dc-f1cd-67d0-a39d-d513a5105ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma NoZeroSMulDivisors.isReduced (R M : Type*)
    [MonoidWithZero R] [Zero M] [MulActionWithZero R M] [Nontrivial M] [NoZeroSMulDivisors R M] :
    IsReduced R := by
  refine ⟨fun x ⟨k, hk⟩ ↦ ?_⟩
  induction' k with k ih
  · rw [pow_zero] at hk
    exact eq_zero_of_zero_eq_one hk.symm x
  · obtain ⟨m : M, hm : m ≠ 0⟩ := exists_ne (0 : M)
    have : x ^ (k + 1) • m = 0 := by simp only [hk, zero_smul]
    rw [pow_succ', mul_smul] at this
    rcases eq_zero_or_eq_zero_of_smul_eq_zero this with rfl | hx
    · rfl
    · exact ih <| (eq_zero_or_eq_zero_of_smul_eq_zero hx).resolve_right hm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Basic/Variant94c56bbcdd5c2621d33b8a3f43cea1be18267b61400ebccc8b1b943ccae99c08.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ee1ef32222097e8a6385676554066fd2d1a549f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
