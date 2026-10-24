# locallyFiniteOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f98cc22a9480e58e045ccb4d4c11b62df4619a22b000114f195b7106ea4ce6f8",
  "kind": "instance",
  "lexical_name": "locallyFiniteOrder",
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
  "slug": "locallyfiniteorder--3a9cc091243f025c94ebbc85",
  "source": {
    "blob": "ae1a8ffefd868ee71f35fb7c8bf904344e32aecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1117,
    "line": 1052,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a9cc091243f025c94ebbc85aaab314c171d008d74dfff4b4246eadcd71e73f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f98cc22a9480e58e045ccb4d4c11b62df4619a22b000114f195b7106ea4ce6f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1052–1117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance locallyFiniteOrder : LocallyFiniteOrder (WithTop α) where
  finsetIcc a b :=
    match a, b with
    | ⊤, ⊤ => {⊤}
    | ⊤, (b : α) => ∅
    | (a : α), ⊤ => insertNone (Ici a)
    | (a : α), (b : α) => (Icc a b).map Embedding.some
  finsetIco a b :=
    match a, b with
    | ⊤, _ => ∅
    | (a : α), ⊤ => (Ici a).map Embedding.some
    | (a : α), (b : α) => (Ico a b).map Embedding.some
  finsetIoc a b :=
    match a, b with
    | ⊤, _ => ∅
    | (a : α), ⊤ => insertNone (Ioi a)
    | (a : α), (b : α) => (Ioc a b).map Embedding.some
  finsetIoo a b :=
    match a, b with
    | ⊤, _ => ∅
    | (a : α), ⊤ => (Ioi a).map Embedding.some
    | (a : α), (b : α) => (Ioo a b).map Embedding.some
  -- Porting note: the proofs below got much worse
  finset_mem_Icc a b x :=
    match a, b, x with
    | ⊤, ⊤, x => mem_singleton.trans (le_antisymm_iff.trans and_comm)
    | ⊤, (b : α), x =>
      iff_of_false (not_mem_empty _) fun h => (h.1.trans h.2).not_lt <| coe_lt_top _
    | (a : α), ⊤, ⊤ => by simp [WithTop.some, WithTop.top, insertNone]
    | (a : α), ⊤, (x : α) => by
        simp only [some, le_eq_subset, some_le_some, le_top, and_true]
        rw [some_mem_insertNone]
        simp
    | (a : α), (b : α), ⊤ => by
        simp only [some, le_eq_subset, mem_map, mem_Icc, le_top, top_le_iff, and_false, iff_false,
          not_exists, not_and, and_imp, Embedding.some, forall_const]
    | (a : α), (b : α), (x : α) => by
        simp only [some, le_eq_subset, Embedding.some, mem_map, mem_Icc, Embedding.coeFn_mk,
          some_le_some, aux]
  finset_mem_Ico a b x :=
    match a, b, x with
    | ⊤, b, x => iff_of_false (not_mem_empty _) fun h => not_top_lt <| h.1.trans_lt h.2
    | (a : α), ⊤, ⊤ => by simp [some, Embedding.some]
    | (a : α), ⊤, (x : α) => by
        simp only [some, Embedding.some, mem_map, mem_Ici, Embedding.coeFn_mk, some_le_some, aux,
          top, some_lt_none, and_true]
    | (a : α), (b : α), ⊤ => by simp [some, Embedding.some]
    | (a : α), (b : α), (x : α) => by simp [some, Embedding.some, aux]
  finset_mem_Ioc a b x :=
    match a, b, x with
    | ⊤, b, x => iff_of_false (not_mem_empty _) fun h => not_top_lt <| h.1.trans_le h.2
    | (a : α), ⊤, ⊤ => by simp [some, insertNone, top]
    | (a : α), ⊤, (x : α) => by simp [some, Embedding.some, insertNone, aux]
    | (a : α), (b : α), ⊤ => by simp [some, Embedding.some, insertNone]
    | (a : α), (b : α), (x : α) => by simp [some, Embedding.some, insertNone, aux]
  finset_mem_Ioo a b x :=
    match a, b, x with
    | ⊤, b, x => iff_of_false (not_mem_empty _) fun h => not_top_lt <| h.1.trans h.2
    | (a : α), ⊤, ⊤ => by simp [some, Embedding.some, insertNone]
    | (a : α), ⊤, (x : α) => by simp [some, Embedding.some, insertNone, aux, top]
    | (a : α), (b : α), ⊤ => by simp [some, Embedding.some, insertNone]
    | (a : α), (b : α), (x : α) => by
      simp [some, Embedding.some, insertNone, aux]

variable (a b : α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantf734bf0b6bfe3e58ae7db678eb8a25a677f22badd83739ab891749126dcaef76.lean#L1052).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1a8ffefd868ee71f35fb7c8bf904344e32aecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
