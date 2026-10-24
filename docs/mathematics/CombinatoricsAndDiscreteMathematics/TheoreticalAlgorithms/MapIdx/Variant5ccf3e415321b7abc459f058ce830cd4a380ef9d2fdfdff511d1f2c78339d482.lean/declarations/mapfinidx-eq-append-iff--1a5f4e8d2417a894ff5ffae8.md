# mapFinIdx_eq_append_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:823babbf-ba0c-581b-f6cc-7d72322d1947",
  "kind": "theorem",
  "lexical_name": "mapFinIdx_eq_append_iff",
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
  "slug": "mapfinidx-eq-append-iff--1a5f4e8d2417a894ff5ffae8",
  "source": {
    "blob": "5c7890c3a6935e13e93fead5e236452bde73cc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 262,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a5f4e8d2417a894ff5ffae829797dc5e6a44c5fb2588bd37a72dc346795bbef",
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

Occurrence: `result:823babbf-ba0c-581b-f6cc-7d72322d1947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapFinIdx_eq_append_iff {l : List α} {f : (i : Nat) → α → (h : i < l.length) → β} :
    l.mapFinIdx f = l₁ ++ l₂ ↔
      ∃ (l₁' : List α) (l₂' : List α) (w : l = l₁' ++ l₂'),
        l₁'.mapFinIdx (fun i a h => f i a (by simp [w]; omega)) = l₁ ∧
        l₂'.mapFinIdx (fun i a h => f (i + l₁'.length) a (by simp [w]; omega)) = l₂ := by
  rw [mapFinIdx_eq_iff]
  constructor
  · intro ⟨h, w⟩
    simp only [length_append] at h
    refine ⟨l.take l₁.length, l.drop l₁.length, by simp, ?_⟩
    constructor
    · apply ext_getElem
      · simp
        omega
      · intro i hi₁ hi₂
        simp only [getElem_mapFinIdx, getElem_take]
        specialize w i (by omega)
        rw [getElem_append_left hi₂] at w
        exact w.symm
    · apply ext_getElem
      · simp
        omega
      · intro i hi₁ hi₂
        simp only [getElem_mapFinIdx]
        simp only [length_take, getElem_drop]
        have : l₁.length ≤ l.length := by omega
        simp only [Nat.min_eq_left this, Nat.add_comm]
        specialize w (i + l₁.length) (by omega)
        rw [getElem_append_right (by omega)] at w
        simpa using w.symm
  · rintro ⟨l₁', l₂', rfl, rfl, rfl⟩
    refine ⟨by simp, fun i h => ?_⟩
    rw [getElem_append]
    split <;> rename_i h'
    · simp [getElem_append_left (by simpa using h')]
    · simp only [length_mapFinIdx, Nat.not_lt] at h'
      have : i - l₁'.length + l₁'.length = i := by omega
      simp [getElem_append_right h', this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant5ccf3e415321b7abc459f058ce830cd4a380ef9d2fdfdff511d1f2c78339d482.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7890c3a6935e13e93fead5e236452bde73cc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
