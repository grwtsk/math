# length_eraseP_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e95eeaae-626e-a836-67f5-1821706224da",
  "kind": "theorem",
  "lexical_name": "length_eraseP_add_one",
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
  "slug": "length-erasep-add-one--71bd63364df8c8c914b146eb",
  "source": {
    "blob": "bb2da47a2f8597262ac23969079ed20f1fa2ed43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3690,
    "line": 3656,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71bd63364df8c8c914b146eb12553ac47bb20b0056eb150322c661f0244fe1fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e95eeaae-626e-a836-67f5-1821706224da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3656–3690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_eraseP_add_one {l : List α} {a} (al : a ∈ l) (pa : p a) :
    (l.eraseP p).length + 1 = l.length := by
  let ⟨_, l₁, l₂, _, _, h₁, h₂⟩ := exists_of_eraseP al pa
  rw [h₂, h₁, length_append, length_append]
  rfl
#align list.length_erasep_add_one List.length_eraseP_add_oneₓ -- prop -> bool

#align list.erasep_append_left List.eraseP_append_leftₓ -- prop -> bool
#align list.erasep_append_right List.eraseP_append_rightₓ -- prop -> bool
#align list.erasep_sublist List.eraseP_sublistₓ -- prop -> bool
#align list.erasep_subset List.eraseP_subsetₓ -- prop -> bool
#align list.sublist.erasep List.Sublist.erasePₓ -- prop -> bool
#align list.mem_of_mem_erasep List.mem_of_mem_erasePₓ -- prop -> bool
#align list.mem_erasep_of_neg List.mem_eraseP_of_negₓ -- prop -> bool
#align list.erasep_map List.eraseP_mapₓ -- prop -> bool
#align list.extractp_eq_find_erasep List.extractP_eq_find?_erasePₓ -- prop -> bool

end eraseP

/-! ### erase -/

section Erase

variable [DecidableEq α]

#align list.erase_nil List.erase_nil

#align list.erase_cons List.erase_consₓ -- DecidableEq -> BEq
#align list.erase_cons_head List.erase_cons_headₓ -- DecidableEq -> BEq
#align list.erase_cons_tail List.erase_cons_tailₓ -- DecidableEq -> BEq
#align list.erase_eq_erasep List.erase_eq_erasePₓ -- DecidableEq -> BEq
#align list.erase_of_not_mem List.erase_of_not_memₓ -- DecidableEq -> BEq
#align list.exists_erase_eq List.exists_erase_eqₓ -- DecidableEq -> BEq
#align list.length_erase_of_mem List.length_erase_of_memₓ -- DecidableEq -> BEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb065ee6a846e9cb506d2b01b47fa4ee5b4ba5ec951613757b9a875f0f9520dde.lean#L3656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb2da47a2f8597262ac23969079ed20f1fa2ed43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
