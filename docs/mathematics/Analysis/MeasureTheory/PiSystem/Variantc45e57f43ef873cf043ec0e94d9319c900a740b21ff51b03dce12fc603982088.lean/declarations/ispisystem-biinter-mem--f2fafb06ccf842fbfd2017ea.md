# IsPiSystem.biInter_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7685f54d839131e4181dd47acfc3d924f57818fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f0f8d75-6bd2-8343-8274-f11164ad5279",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:009e2c33-9a44-3a84-c1be-69eb6fc51bde",
  "kind": "lemma",
  "lexical_name": "IsPiSystem.biInter_mem",
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
  "slug": "ispisystem-biinter-mem--f2fafb06ccf842fbfd2017ea",
  "source": {
    "blob": "7685f54d839131e4181dd47acfc3d924f57818fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2fafb06ccf842fbfd2017eaca2f634bf394f8d5db8793dd01076ed93cedb2b4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:009e2c33-9a44-3a84-c1be-69eb6fc51bde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPiSystem.biInter_mem {S : Set (Set α)} (h_pi : IsPiSystem S) {t : Finset (Set α)}
    (t_ne : t.Nonempty) (ht : ∀ s ∈ t, s ∈ S) (h' : (⋂ s ∈ t, s).Nonempty) :
    (⋂ s ∈ t, s) ∈ S := by
  induction t_ne using Finset.Nonempty.cons_induction with
  | singleton a => simpa using ht
  | cons a t hat t_ne ih =>
    simp only [Finset.cons_eq_insert, Finset.mem_insert, iInter_iInter_eq_or_left] at h' ht ⊢
    refine h_pi _ (ht a (Or.inl rfl)) _ ?_ h'
    refine ih (fun s hs ↦ ?_) h'.right
    exact ht s (Or.inr hs)

section Order

variable {ι ι' : Sort*} [LinearOrder α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7685f54d839131e4181dd47acfc3d924f57818fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
