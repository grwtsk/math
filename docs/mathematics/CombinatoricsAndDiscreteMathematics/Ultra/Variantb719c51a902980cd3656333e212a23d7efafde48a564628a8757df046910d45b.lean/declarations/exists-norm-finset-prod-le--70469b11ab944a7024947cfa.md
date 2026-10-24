# exists_norm_finset_prod_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0836685939216f72a45578b8e2258ebbc3374ca1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17d42506-d107-6d96-5887-0e3b078e549c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b48d1623-6d77-a926-dcf2-b1770826aa67",
  "kind": "theorem",
  "lexical_name": "exists_norm_finset_prod_le",
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
  "slug": "exists-norm-finset-prod-le--70469b11ab944a7024947cfa",
  "source": {
    "blob": "0836685939216f72a45578b8e2258ebbc3374ca1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 279,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70469b11ab944a7024947cfa32f004d83bff4214227c6eff4e3cc3892c32bf5f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b48d1623-6d77-a926-dcf2-b1770826aa67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_norm_finset_prod_le (t : Finset ι) [Nonempty ι] (f : ι → M) :
    ∃ i : ι, (t.Nonempty → i ∈ t) ∧ ‖∏ j ∈ t, f j‖ ≤ ‖f i‖ := by
  rcases t.eq_empty_or_nonempty with rfl | ht
  · simp
  exact (fun ⟨i, h, h'⟩ => ⟨i, fun _ ↦ h, h'⟩) <| exists_norm_finset_prod_le_of_nonempty ht f

/--
Given a function `f : ι → M` and a multiset `t : Multiset ι`, we can always find `i : ι`, belonging
to `t` if `t` is nonempty, such that `‖(s.map f).prod‖ ≤ ‖f i‖`.
-/
@[to_additive "Given a function `f : ι → M` and a multiset `t : Multiset ι`, we can always find
`i : ι`, belonging to `t` if `t` is nonempty, such that `‖(s.map f).sum‖ ≤ ‖f i‖`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantb719c51a902980cd3656333e212a23d7efafde48a564628a8757df046910d45b.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0836685939216f72a45578b8e2258ebbc3374ca1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
