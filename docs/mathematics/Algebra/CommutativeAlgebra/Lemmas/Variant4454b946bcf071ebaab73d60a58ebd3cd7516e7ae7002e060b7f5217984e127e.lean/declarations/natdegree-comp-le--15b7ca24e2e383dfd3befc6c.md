# natDegree_comp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d9a61a22ff677e4bfd3053758c1b881a3fb086f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57b993f4-7b0f-8454-cf86-c86b225d48c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6168f523-5f2d-0d13-8b0a-5a1648d5eec8",
  "kind": "theorem",
  "lexical_name": "natDegree_comp_le",
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
  "slug": "natdegree-comp-le--15b7ca24e2e383dfd3befc6c",
  "source": {
    "blob": "7d9a61a22ff677e4bfd3053758c1b881a3fb086f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 36,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15b7ca24e2e383dfd3befc6c8a12c41af47975fd37acd2528bd5764fcc8ce65f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6168f523-5f2d-0d13-8b0a-5a1648d5eec8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_comp_le : natDegree (p.comp q) ≤ natDegree p * natDegree q :=
  letI := Classical.decEq R
  if h0 : p.comp q = 0 then by rw [h0, natDegree_zero]; exact Nat.zero_le _
  else
    WithBot.coe_le_coe.1 <|
      calc
        ↑(natDegree (p.comp q)) = degree (p.comp q) := (degree_eq_natDegree h0).symm
        _ = _ := congr_arg degree comp_eq_sum_left
        _ ≤ _ := degree_sum_le _ _
        _ ≤ _ :=
          Finset.sup_le fun n hn =>
            calc
              degree (C (coeff p n) * q ^ n) ≤ degree (C (coeff p n)) + degree (q ^ n) :=
                degree_mul_le _ _
              _ ≤ natDegree (C (coeff p n)) + n • degree q :=
                (add_le_add degree_le_natDegree (degree_pow_le _ _))
              _ ≤ natDegree (C (coeff p n)) + n • ↑(natDegree q) :=
                (add_le_add_left (nsmul_le_nsmul_right (@degree_le_natDegree _ _ q) n) _)
              _ = (n * natDegree q : ℕ) := by
                rw [natDegree_C, Nat.cast_zero, zero_add, nsmul_eq_mul]
                simp
              _ ≤ (natDegree p * natDegree q : ℕ) :=
                WithBot.coe_le_coe.2 <|
                  mul_le_mul_of_nonneg_right (le_natDegree_of_ne_zero (mem_support_iff.1 hn))
                    (Nat.zero_le _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant4454b946bcf071ebaab73d60a58ebd3cd7516e7ae7002e060b7f5217984e127e.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d9a61a22ff677e4bfd3053758c1b881a3fb086f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
