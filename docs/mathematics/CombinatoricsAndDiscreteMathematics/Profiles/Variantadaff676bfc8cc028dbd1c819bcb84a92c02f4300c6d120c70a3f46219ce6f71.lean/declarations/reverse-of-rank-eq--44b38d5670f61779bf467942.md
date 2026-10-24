# reverse_of_rank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6173e8d0-6ec3-cf04-b68d-9e23a0533758",
  "kind": "theorem",
  "lexical_name": "reverse_of_rank_eq",
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
  "slug": "reverse-of-rank-eq--44b38d5670f61779bf467942",
  "source": {
    "blob": "62af397a5e54db40a7bdba37a13e4c5221387762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 398,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Profiles/Variantadaff676bfc8cc028dbd1c819bcb84a92c02f4300c6d120c70a3f46219ce6f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44b38d5670f61779bf467942236d391d88313df152b3a67ec379f25a5064f5b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Profiles/Variantadaff676bfc8cc028dbd1c819bcb84a92c02f4300c6d120c70a3f46219ce6f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6173e8d0-6ec3-cf04-b68d-9e23a0533758`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reverse_of_rank_eq {v w : V} (h : Reach E v w) (he : rank E v = rank E w) :
    Reach E w v := by
  have hs : predecessors E v ⊆ predecessors E w := by
    intro z hz
    exact (mem_predecessors E).mpr (((mem_predecessors E).mp hz).trans h)
  have he' := Finset.eq_of_subset_of_card_le hs (le_of_eq he.symm)
  apply (mem_predecessors E).mp
  rw [he']
  exact (mem_predecessors E).mpr (.refl _)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Profiles/Variantadaff676bfc8cc028dbd1c819bcb84a92c02f4300c6d120c70a3f46219ce6f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Profiles/Variantadaff676bfc8cc028dbd1c819bcb84a92c02f4300c6d120c70a3f46219ce6f71.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62af397a5e54db40a7bdba37a13e4c5221387762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
