# shell_norm_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccf41c95bae66453b7ff3bfda4d598f9359b158e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f66dd86-1d39-c0e5-568e-280f66d4c08e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7027ae8-3104-2572-110a-2b3df9d5a09d",
  "kind": "theorem",
  "lexical_name": "shell_norm_lt",
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
  "slug": "shell-norm-lt--bbe6be852c52249380a2d91f",
  "source": {
    "blob": "ccf41c95bae66453b7ff3bfda4d598f9359b158e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbe6be852c52249380a2d91f78baed74f761af8546f4842ad17c44554c6d2599",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7027ae8-3104-2572-110a-2b3df9d5a09d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shell_norm_lt (n : ℕ) (o : ZeroShell n) :
    ‖o.val.1.val‖ < (n : ℝ) + 2 := by
  have hb := Nat.lt_floor_add_one ‖shiftedValue o.val‖
  change ‖shiftedValue o.val‖ < (shellIndex o.val : ℝ) + 1 at hb
  rw [o.property] at hb
  have hn : ‖o.val.1.val‖ ≤ ‖shiftedValue o.val‖ + 1/2 := by
    have ht := norm_add_le (shiftedValue o.val) (1/2 : ℂ)
    have heq : shiftedValue o.val + (1/2 : ℂ) = o.val.1.val := by
      simp [shiftedValue]
    rw [heq] at ht
    norm_num at ht
    exact ht
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroShellCount/Variant1aad331d7a26ff126fda99b6b6c03f2b815f151e39b451d4fd3080df3b26dd43.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccf41c95bae66453b7ff3bfda4d598f9359b158e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
