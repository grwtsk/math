# exists_norm_finsetProd_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66e49046-892b-7833-3abf-2592f5d802c7",
  "kind": "theorem",
  "lexical_name": "exists_norm_finsetProd_le",
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
  "slug": "exists-norm-finsetprod-le--6526717050cd6e5e6f8b083a",
  "source": {
    "blob": "599deda5cbea27bbb7ec2dd26f13f10b8033ff8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 292,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6526717050cd6e5e6f8b083a91fd9a3e0fd00adbf72d1a584dc02b4c0e3010cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66e49046-892b-7833-3abf-2592f5d802c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_norm_finsetProd_le (t : Finset ι) [Nonempty ι] (f : ι → M) :
    ∃ i : ι, (t.Nonempty → i ∈ t) ∧ ‖∏ j ∈ t, f j‖ ≤ ‖f i‖ := by
  rcases t.eq_empty_or_nonempty with rfl | ht
  · simp
  exact (fun ⟨i, h, h'⟩ => ⟨i, fun _ ↦ h, h'⟩) <| exists_norm_finsetProd_le_of_nonempty ht f

@[deprecated (since := "2026-04-08")] alias exists_norm_finset_sum_le := exists_norm_finsetSum_le

@[to_additive existing, deprecated (since := "2026-04-08")]
alias exists_norm_finset_prod_le := exists_norm_finsetProd_le

/--
Given a function `f : ι → M` and a multiset `t : Multiset ι`, we can always find `i : ι`, belonging
to `t` if `t` is nonempty, such that `‖(s.map f).prod‖ ≤ ‖f i‖`.
-/
@[to_additive /-- Given a function `f : ι → M` and a multiset `t : Multiset ι`, we can always find
`i : ι`, belonging to `t` if `t` is nonempty, such that `‖(s.map f).sum‖ ≤ ‖f i‖`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599deda5cbea27bbb7ec2dd26f13f10b8033ff8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
