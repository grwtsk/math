# getElem_mapFinIdx_go

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:362360ad-b282-3dc4-f59e-fba42f4997b8",
  "kind": "theorem",
  "lexical_name": "getElem_mapFinIdx_go",
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
  "slug": "getelem-mapfinidx-go--d0c56bce3d4e7e0189be44d2",
  "source": {
    "blob": "5c7890c3a6935e13e93fead5e236452bde73cc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0c56bce3d4e7e0189be44d2e3836aaf69cf67fa9f169122bf10d5a341dd6416",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:362360ad-b282-3dc4-f59e-fba42f4997b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_mapFinIdx_go {as : List α} {f : (i : Nat) → α → (h : i < as.length) → β} {i : Nat} {h} {w} :
    (mapFinIdx.go as f bs acc h)[i] =
      if w' : i < acc.size then
        acc[i]
      else
        f i (bs[i - acc.size]'(by simp at w; omega)) (by simp at w; omega) := by
  induction bs generalizing acc with
  | nil =>
    simp only [length_mapFinIdx_go, length_nil, Nat.zero_add] at w h
    simp only [mapFinIdx.go, Array.getElem_toList]
    rw [dif_pos]
  | cons _ _ ih =>
    simp [mapFinIdx.go]
    rw [ih]
    simp
    split <;> rename_i h₁ <;> split <;> rename_i h₂
    · rw [Array.getElem_push_lt]
    · have h₃ : i = acc.size := by omega
      subst h₃
      simp
    · omega
    · have h₃ : i - acc.size = (i - (acc.size + 1)) + 1 := by omega
      simp [h₃]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7890c3a6935e13e93fead5e236452bde73cc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
