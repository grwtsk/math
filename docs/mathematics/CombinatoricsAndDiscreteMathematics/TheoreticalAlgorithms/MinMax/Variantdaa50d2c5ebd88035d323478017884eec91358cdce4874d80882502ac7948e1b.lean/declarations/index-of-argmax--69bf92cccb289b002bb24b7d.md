# index_of_argmax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e34755ee344d0fb8c9ec1a0222ee4e83c184ef6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa50d2c5ebd88035d323478017884eec91358cdce4874d80882502ac7948e1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72d821e0-00f4-be7b-91be-6e85933e0a2b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:835343df-3728-c335-f52e-8b3aec555960",
  "kind": "theorem",
  "lexical_name": "index_of_argmax",
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
  "slug": "index-of-argmax--69bf92cccb289b002bb24b7d",
  "source": {
    "blob": "7e34755ee344d0fb8c9ec1a0222ee4e83c184ef6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 206,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdaa50d2c5ebd88035d323478017884eec91358cdce4874d80882502ac7948e1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69bf92cccb289b002bb24b7d3bf01056f319ba124a92bd237ca87d3a285b11e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdaa50d2c5ebd88035d323478017884eec91358cdce4874d80882502ac7948e1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:835343df-3728-c335-f52e-8b3aec555960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem index_of_argmax :
    ∀ {l : List α} {m : α}, m ∈ argmax f l → ∀ {a}, a ∈ l → f m ≤ f a → l.indexOf m ≤ l.indexOf a
  | [], m, _, _, _, _ => by simp
  | hd :: tl, m, hm, a, ha, ham => by
    simp only [indexOf_cons, argmax_cons, Option.mem_def] at hm ⊢
    cases h : argmax f tl
    · rw [h] at hm
      simp_all
    rw [h] at hm
    dsimp only at hm
    obtain ha | ha := ha <;> split_ifs at hm <;> injection hm with hm <;> subst hm
    · cases not_le_of_lt ‹_› ‹_›
    · rw [if_pos rfl]
    · rw [if_neg, if_neg]
      exact Nat.succ_le_succ (index_of_argmax h (by assumption) ham)
      · exact ne_of_apply_ne f (lt_of_lt_of_le ‹_› ‹_›).ne'
      · exact ne_of_apply_ne _ ‹f hd < f _›.ne'
    · rw [if_pos rfl]
      exact Nat.zero_le _
#align list.index_of_argmax List.index_of_argmax

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdaa50d2c5ebd88035d323478017884eec91358cdce4874d80882502ac7948e1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinMax/Variantdaa50d2c5ebd88035d323478017884eec91358cdce4874d80882502ac7948e1b.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e34755ee344d0fb8c9ec1a0222ee4e83c184ef6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
