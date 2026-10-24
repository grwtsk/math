# dropSlice_eq_dropSliceTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2903f585-05d4-ee64-ddec-0becd3f2587a",
  "kind": "theorem",
  "lexical_name": "dropSlice_eq_dropSliceTR",
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
  "slug": "dropslice-eq-dropslicetr--184a8daaa24c45749f1e4377",
  "source": {
    "blob": "bcf49991f263cdec635073a6120ff920b3f2b1a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 743,
    "line": 723,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:184a8daaa24c45749f1e43772139538007044828c9ef1695aa744ea82e885d99",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2903f585-05d4-ee64-ddec-0becd3f2587a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–743.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[csimp] theorem dropSlice_eq_dropSliceTR : @dropSlice = @dropSliceTR := by
  funext α n m l; simp [dropSliceTR]
  split; { rw [dropSlice_zero₂] }
  rename_i m
  let rec go (acc) : ∀ xs n, l = acc.toList ++ xs →
    dropSliceTR.go l m xs n acc = acc.toList ++ xs.dropSlice n (m+1)
  | [],    n
  | _::xs, 0 => fun h => by simp [dropSliceTR.go, dropSlice, h]
  | x::xs, n+1 => by simp [dropSliceTR.go, dropSlice]; intro h; rw [go _ xs]; {simp}; simp [h]
  exact (go #[] _ _ rfl).symm

/--
Left-biased version of `List.zipWith`. `zipWithLeft' f as bs` applies `f` to each
pair of elements `aᵢ ∈ as` and `bᵢ ∈ bs`. If `bs` is shorter than `as`, `f` is
applied to `none` for the remaining `aᵢ`. Returns the results of the `f`
applications and the remaining `bs`.
```
zipWithLeft' prod.mk [1, 2] ['a'] = ([(1, some 'a'), (2, none)], [])
zipWithLeft' prod.mk [1] ['a', 'b'] = ([(1, some 'a')], ['b'])
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd6761bcf9dcb8a3a802a0c6f0f0759b847489cf2f9e98012683bc10935dc9773.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf49991f263cdec635073a6120ff920b3f2b1a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
