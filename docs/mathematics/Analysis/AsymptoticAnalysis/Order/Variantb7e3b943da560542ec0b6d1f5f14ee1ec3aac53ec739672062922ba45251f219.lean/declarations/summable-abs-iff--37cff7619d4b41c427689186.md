# summable_abs_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "98450a98c3bca1eb630117e4db0dc098672f738c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95d507c9-9c21-3e14-a363-f09b99f01ea9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84e1b1c3-bbe7-5d74-8afb-06108d3d9d8d",
  "kind": "theorem",
  "lexical_name": "summable_abs_iff",
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
  "slug": "summable-abs-iff--37cff7619d4b41c427689186",
  "source": {
    "blob": "98450a98c3bca1eb630117e4db0dc098672f738c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 246,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37cff7619d4b41c4276891867acfa164db2495ffadd5f0b95de1f443ec7a379d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84e1b1c3-bbe7-5d74-8afb-06108d3d9d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_abs_iff [LinearOrderedAddCommGroup α] [UniformSpace α] [UniformAddGroup α]
    [CompleteSpace α] {f : ι → α} : (Summable fun x => |f x|) ↔ Summable f :=
  let s := { x | 0 ≤ f x }
  have h1 : ∀ x : s, |f x| = f x := fun x => abs_of_nonneg x.2
  have h2 : ∀ x : ↑sᶜ, |f x| = -f x := fun x => abs_of_neg (not_le.1 x.2)
  calc (Summable fun x => |f x|) ↔
      (Summable fun x : s => |f x|) ∧ Summable fun x : ↑sᶜ => |f x| :=
        summable_subtype_and_compl.symm
  _ ↔ (Summable fun x : s => f x) ∧ Summable fun x : ↑sᶜ => -f x := by simp only [h1, h2]
  _ ↔ Summable f := by simp only [summable_neg_iff, summable_subtype_and_compl]
#align summable_abs_iff summable_abs_iff

alias ⟨Summable.of_abs, Summable.abs⟩ := summable_abs_iff
#align summable.of_abs Summable.of_abs
#align summable.abs Summable.abs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Order/Variantb7e3b943da560542ec0b6d1f5f14ee1ec3aac53ec739672062922ba45251f219.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98450a98c3bca1eb630117e4db0dc098672f738c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
