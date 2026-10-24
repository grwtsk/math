# zipWithAll_go_toArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5161d470-30fa-75d5-3171-1d14bd3f9974",
  "kind": "theorem",
  "lexical_name": "zipWithAll_go_toArray",
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
  "slug": "zipwithall-go-toarray--3e91e095e09daedc41630c75",
  "source": {
    "blob": "3318a8461302d173aa58aa433fca509db3f924aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 465,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e91e095e09daedc41630c756336c200d81a7600eccc1604b2dcff49a22f7bea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5161d470-30fa-75d5-3171-1d14bd3f9974`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem zipWithAll_go_toArray (as : List α) (bs : List β) (f : Option α → Option β → γ) (i : Nat) (xs : Array γ) :
    zipWithAll.go f as.toArray bs.toArray i xs = xs ++ (List.zipWithAll f (as.drop i) (bs.drop i)).toArray := by
  unfold zipWithAll.go
  split <;> rename_i h
  · rw [zipWithAll_go_toArray]
    simp at h
    simp only [getElem?_toArray, push_append_toArray]
    if ha : i < as.length then
      if hb : i < bs.length then
        rw [List.drop_eq_getElem_cons ha, List.drop_eq_getElem_cons hb]
        simp only [ha, hb, getElem?_eq_getElem, zipWithAll_cons_cons]
      else
        simp only [Nat.not_lt] at hb
        rw [List.drop_eq_getElem_cons ha]
        rw [(drop_eq_nil_iff (l := bs)).mpr (by omega), (drop_eq_nil_iff (l := bs)).mpr (by omega)]
        simp only [zipWithAll_nil, map_drop, map_cons]
        rw [getElem?_eq_getElem ha]
        rw [getElem?_eq_none hb]
    else
      if hb : i < bs.length then
        simp only [Nat.not_lt] at ha
        rw [List.drop_eq_getElem_cons hb]
        rw [(drop_eq_nil_iff (l := as)).mpr (by omega), (drop_eq_nil_iff (l := as)).mpr (by omega)]
        simp only [nil_zipWithAll, map_drop, map_cons]
        rw [getElem?_eq_getElem hb]
        rw [getElem?_eq_none ha]
      else
        omega
  · simp only [size_toArray, Nat.not_lt] at h
    rw [drop_eq_nil_of_le (by omega), drop_eq_nil_of_le (by omega)]
    simp
  termination_by max as.length bs.length - i
  decreasing_by simp_wf; decreasing_trivial_pre_omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3318a8461302d173aa58aa433fca509db3f924aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
