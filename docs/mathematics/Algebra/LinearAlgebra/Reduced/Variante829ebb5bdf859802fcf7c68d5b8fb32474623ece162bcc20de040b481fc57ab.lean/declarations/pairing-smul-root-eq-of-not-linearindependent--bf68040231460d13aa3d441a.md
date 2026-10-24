# pairing_smul_root_eq_of_not_linearIndependent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05cb121520c3b58e20d1271be07bd4d147c3d14d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9dac9f9-aa4d-e96c-2cbd-9812932c6f7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84e2bad1-583e-9da2-455a-8532a900d9f3",
  "kind": "lemma",
  "lexical_name": "pairing_smul_root_eq_of_not_linearIndependent",
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
  "slug": "pairing-smul-root-eq-of-not-linearindependent--bf68040231460d13aa3d441a",
  "source": {
    "blob": "05cb121520c3b58e20d1271be07bd4d147c3d14d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 138,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf68040231460d13aa3d441a67088cdd843a9834a8cd8cd48b3a3a43313ece5e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84e2bad1-583e-9da2-455a-8532a900d9f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairing_smul_root_eq_of_not_linearIndependent [NeZero (2 : R)] [NoZeroSMulDivisors R M]
    (h : ¬ LinearIndependent R ![P.root i, P.root j]) :
    P.pairing j i • P.root i = (2 : R) • P.root j := by
  rw [LinearIndependent.pair_iff] at h
  push_neg at h
  obtain ⟨s, t, h₁, h₂⟩ := h
  replace h₂ : s ≠ 0 := by
    rcases eq_or_ne s 0 with rfl | hs
    · exact False.elim <| h₂ rfl <| (smul_eq_zero_iff_left <| P.ne_zero j).mp <| by simpa using h₁
    · assumption
  have h₃ : t ≠ 0 := by
    rcases eq_or_ne t 0 with rfl | ht
    · exact False.elim <| h₂ <| (smul_eq_zero_iff_left <| P.ne_zero i).mp <| by simpa using h₁
    · assumption
  replace h₁ : s • P.root i = -t • P.root j := by rwa [← eq_neg_iff_add_eq_zero, ← neg_smul] at h₁
  have h₄ : s * 2 = - (t * P.pairing j i) := by simpa using congr_arg (P.coroot' i) h₁
  replace h₁ : (2 : R) • (s • P.root i) = (2 : R) • (-t • P.root j) := by rw [h₁]
  rw [smul_smul, mul_comm, h₄, smul_comm, ← neg_mul, ← smul_smul] at h₁
  exact smul_right_injective M (neg_ne_zero.mpr h₃) h₁

section Finite

variable [Finite ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reduced/Variante829ebb5bdf859802fcf7c68d5b8fb32474623ece162bcc20de040b481fc57ab.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05cb121520c3b58e20d1271be07bd4d147c3d14d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
