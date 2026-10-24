# sublist_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82c67f3f209c3d0ea700d6bb4d9dbbee05196230",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 448,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67f642b7-3b5f-f431-79c7-c65e016d6277",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25052667-6bb4-f108-0a7e-1a8a65a42d07",
  "kind": "theorem",
  "lexical_name": "sublist_append_iff",
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
  "slug": "sublist-append-iff--fabc047ea13e76da0ee5e63c",
  "source": {
    "blob": "82c67f3f209c3d0ea700d6bb4d9dbbee05196230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 448,
    "path": "GRWTSK/Topology/GeneralTopology/Sublist/Variantaa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fabc047ea13e76da0ee5e63c89dbade17e027bc969dfb7c366b7c99bcacbb3de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sublist/Variantaa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25052667-6bb4-f108-0a7e-1a8a65a42d07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublist_append_iff {l : List α} :
    l <+ r₁ ++ r₂ ↔ ∃ l₁ l₂, l = l₁ ++ l₂ ∧ l₁ <+ r₁ ∧ l₂ <+ r₂ := by
  induction r₁ generalizing l with
  | nil =>
    constructor
    · intro w
      refine ⟨[], l, by simp_all⟩
    · rintro ⟨l₁, l₂, rfl, w₁, w₂⟩
      simp_all
  | cons r r₁ ih =>
    constructor
    · intro w
      simp only [cons_append] at w
      cases w with
      | cons _ w =>
        obtain ⟨l₁, l₂, rfl, w₁, w₂⟩ := ih.1 w
        exact ⟨l₁, l₂, rfl, Sublist.cons r w₁, w₂⟩
      | cons_cons _ w =>
        rename_i l
        obtain ⟨l₁, l₂, rfl, w₁, w₂⟩ := ih.1 w
        refine ⟨r :: l₁, l₂, by simp, cons_sublist_cons.mpr w₁, w₂⟩
    · rintro ⟨l₁, l₂, rfl, w₁, w₂⟩
      cases w₁ with
      | cons _ w₁ =>
        exact Sublist.cons _ (Sublist.append w₁ w₂)
      | cons_cons _ w₁ =>
        rename_i l
        exact Sublist.cons_cons _ (Sublist.append w₁ w₂)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sublist/Variantaa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sublist/Variantaa624029539f797f6a04e6f58cab1381fbba29cc4fbe04f0d4d2322867dbdfbb.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c67f3f209c3d0ea700d6bb4d9dbbee05196230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
