# sorted_last_eq_max'_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e54ab4d4-2c0d-60b6-8b24-854f087dabf4",
  "kind": "theorem",
  "lexical_name": "sorted_last_eq_max'_aux",
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
  "slug": "sorted-last-eq-max-aux--804dfa61bda5e90f6fae89fc",
  "source": {
    "blob": "f6923de5d0e4768ef4ebb3b1d49523490095f400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:804dfa61bda5e90f6fae89fce8d395667f7551270fe4a817a40de91f8de2ac45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e54ab4d4-2c0d-60b6-8b24-854f087dabf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sorted_last_eq_max'_aux (s : Finset α)
    (h : (s.sort (· ≤ ·)).length - 1 < (s.sort (· ≤ ·)).length) (H : s.Nonempty) :
    (s.sort (· ≤ ·))[(s.sort (· ≤ ·)).length - 1] = s.max' H := by
  let l := s.sort (· ≤ ·)
  apply le_antisymm
  · have : l.get ⟨(s.sort (· ≤ ·)).length - 1, h⟩ ∈ s :=
      (Finset.mem_sort (α := α) (· ≤ ·)).1 (List.get_mem l _)
    exact s.le_max' _ this
  · have : s.max' H ∈ l := (Finset.mem_sort (α := α) (· ≤ ·)).mpr (s.max'_mem H)
    obtain ⟨i, hi⟩ : ∃ i, l.get i = s.max' H := List.mem_iff_get.1 this
    rw [← hi]
    exact (s.sort_sorted (· ≤ ·)).rel_get_of_le (Nat.le_sub_one_of_lt i.prop)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variante1b7daf0340f1ce755e7cf63e2c30a31031eb3a19d11fdaf6dd17c4c04ae4c0e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6923de5d0e4768ef4ebb3b1d49523490095f400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
