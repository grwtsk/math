# exists_norm_finset_prod_le_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41596bc3-5f02-2501-1b11-07872b029537",
  "kind": "theorem",
  "lexical_name": "exists_norm_finset_prod_le_of_nonempty",
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
  "slug": "exists-norm-finset-prod-le-of-nonempty--d05107a9a146766105f4934f",
  "source": {
    "blob": "0179ac3dfa5b91bec32d6b5fa4a0af2107e48e2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 276,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d05107a9a146766105f4934f0f00381f57b1d35684fa4637f040cbfb8317b4fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41596bc3-5f02-2501-1b11-07872b029537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_norm_finset_prod_le_of_nonempty {t : Finset ι} (ht : t.Nonempty) (f : ι → M) :
    ∃ i ∈ t, ‖∏ j ∈ t, f j‖ ≤ ‖f i‖ :=
  match t.exists_mem_eq_sup' ht (‖f ·‖) with
  |⟨j, hj, hj'⟩ => ⟨j, hj, (ht.norm_prod_le_sup'_norm f).trans (le_of_eq hj')⟩

/--
Given a function `f : ι → M` and a finite set `t ⊆ ι`, we can always find `i : ι`, belonging to `t`
if `t` is nonempty, such that `‖∏ j ∈ t, f j‖ ≤ ‖f i‖`.
-/
@[to_additive "Given a function `f : ι → M` and a finite set `t ⊆ ι`, we can always find `i : ι`,
belonging to `t` if `t` is nonempty, such that `‖∑ j ∈ t, f j‖ ≤ ‖f i‖`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variant1247169455a774ea09ebd835f1051238cb6e590ecddfc5e2f3c9c1f096784311.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0179ac3dfa5b91bec32d6b5fa4a0af2107e48e2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
