# exists_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 412,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e2e97ef-267a-0c52-c9c5-fadeeed6e11a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6aecca0d-678b-cf40-f2ab-52d43145ce2a",
  "kind": "theorem",
  "lexical_name": "exists_of",
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
  "slug": "exists-of--ba047043d3defc4fb96086c9",
  "source": {
    "blob": "062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 412,
    "path": "GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba047043d3defc4fb96086c90d0df32a015cb2a7a585e7b49eaed03155ba4b99",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aecca0d-678b-cf40-f2ab-52d43145ce2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of [Nonempty ι] [IsDirected ι (· ≤ ·)] (z : DirectLimit G f) :
    ∃ i x, of G f i x = z :=
  Nonempty.elim (by infer_instance) fun ind : ι =>
    Quotient.inductionOn' z fun x =>
      FreeAbelianGroup.induction_on x ⟨ind, 0, (of _ _ ind).map_zero⟩
        (fun s =>
          Multiset.induction_on s ⟨ind, 1, (of _ _ ind).map_one⟩ fun a s ih =>
            let ⟨i, x⟩ := a
            let ⟨j, y, hs⟩ := ih
            let ⟨k, hik, hjk⟩ := exists_ge_ge i j
            ⟨k, f i k hik x * f j k hjk y, by
              rw [(of G f k).map_mul, of_f, of_f, hs]
              /- porting note: In Lean3, from here, this was `by refl`. I have added
              the lemma `FreeCommRing.of_cons` to fix this proof. -/
              apply congr_arg Quotient.mk''
              symm
              apply FreeCommRing.of_cons⟩)
        (fun s ⟨i, x, ih⟩ => ⟨i, -x, by
          -- porting note: Lean 3 was `of _ _ _`; Lean 4 is not as good at unification
          -- here as Lean 3 is, for some reason.
          rw [(of G f i).map_neg, ih]
          rfl⟩)
        fun p q ⟨i, x, ihx⟩ ⟨j, y, ihy⟩ =>
        let ⟨k, hik, hjk⟩ := exists_ge_ge i j
        ⟨k, f i k hik x + f j k hjk y, by rw [(of _ _ _).map_add, of_f, of_f, ihx, ihy]; rfl⟩
#align ring.direct_limit.exists_of Ring.DirectLimit.exists_of

section

open Classical

open Polynomial

variable {f' : ∀ i j, i ≤ j → G i →+* G j}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
