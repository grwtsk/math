# getLsbD_sshiftRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c7369623-4817-49ef-b1d6-6644c6e89474",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecc04fac-3264-05d4-3a74-7e5fd2b75656",
  "kind": "theorem",
  "lexical_name": "getLsbD_sshiftRight",
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
  "slug": "getlsbd-sshiftright--147f1494fb8909575aab99e7",
  "source": {
    "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2292,
    "line": 2271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:147f1494fb8909575aab99e76e3d3b89e68f05d9345b9d6d614015960e323878",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecc04fac-3264-05d4-3a74-7e5fd2b75656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2271–2292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getLsbD_sshiftRight (x : BitVec w) (s i : Nat) :
    getLsbD (x.sshiftRight s) i =
      (!decide (w ≤ i) && if s + i < w then x.getLsbD (s + i) else x.msb) := by
  rcases hmsb : x.msb with rfl | rfl
  · simp only [sshiftRight_eq_of_msb_false hmsb, getLsbD_ushiftRight, Bool.if_false_right]
    by_cases hi : i ≥ w
    · simp only [hi, decide_true, Bool.not_true, Bool.false_and]
      apply getLsbD_of_ge
      omega
    · simp only [hi, decide_false, Bool.not_false, Bool.true_and, Bool.eq_and_self,
        decide_eq_true_eq]
      intro hlsb
      apply BitVec.lt_of_getLsbD hlsb
  · by_cases hi : i ≥ w
    · simp [hi]
    · simp only [sshiftRight_eq_of_msb_true hmsb, getLsbD_not, getLsbD_ushiftRight, Bool.not_and,
        Bool.not_not, hi, decide_false, Bool.not_false, Bool.if_true_right, Bool.true_and,
        Bool.and_eq_right_iff_imp, Bool.or_eq_true, Bool.not_eq_true', decide_eq_false_iff_not,
        Nat.not_lt, decide_eq_true_eq]
      omega

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean#L2271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05610358a70a3b8d66b81c396a7fc44a13f11d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
