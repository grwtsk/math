# HasSum.mul_of_nonarchimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb44e7cbd8f51aacfc0ffe4180dfa71c2f1b6ce9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bfd5b0c-d561-0c8e-ca0a-349208ce0a64",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7dc2ebe6-03d5-7f08-30a6-fcaece6786b1",
  "kind": "theorem",
  "lexical_name": "HasSum.mul_of_nonarchimedean",
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
  "slug": "hassum-mul-of-nonarchimedean--1b8b8d423f1efa18681add78",
  "source": {
    "blob": "bb44e7cbd8f51aacfc0ffe4180dfa71c2f1b6ce9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b8b8d423f1efa18681add789f59d542a66fc309bd57261031981e4ff89ed54d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dc2ebe6-03d5-7f08-30a6-fcaece6786b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasSum.mul_of_nonarchimedean {f : α → R} {g : β → R} {a b : R} (hf : HasSum f a)
    (hg : HasSum g b) : HasSum (fun i : α × β ↦ f i.1 * g i.2) (a * b) := by
  rw [← hasSum_iff_hasSum_compl] at *
  simp only [Function.comp_def, UniformSpace.Completion.toCompl_apply,
    UniformSpace.Completion.coe_mul]
  exact (hf.mul hg) (hf.summable.mul_of_complete_nonarchimedean hg.summable :)

/-- Let `R` be a nonarchimedean ring. If functions `f : α → R` and `g : β → R` are summable, then
so is `fun i : α × β ↦ f i.1 * g i.2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Nonarchimedean/Variant3deaea96a494a2ae0a9c2e8f804760593e11f03519845ceaa8857bf6b0532f03.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb44e7cbd8f51aacfc0ffe4180dfa71c2f1b6ce9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
