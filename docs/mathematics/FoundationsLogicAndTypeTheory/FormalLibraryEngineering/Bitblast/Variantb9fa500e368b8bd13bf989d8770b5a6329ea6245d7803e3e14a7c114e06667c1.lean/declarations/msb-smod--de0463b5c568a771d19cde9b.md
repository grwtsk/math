# msb_smod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:117d1fd3-b292-e85f-ed6b-a84ec12aabec",
  "kind": "theorem",
  "lexical_name": "msb_smod",
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
  "slug": "msb-smod--de0463b5c568a771d19cde9b",
  "source": {
    "blob": "77050a46ff99d345da672844caf68022db57852a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2074,
    "line": 2049,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de0463b5c568a771d19cde9be1609b149c4b20925dd232d2d79d14ac103fb043",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:117d1fd3-b292-e85f-ed6b-a84ec12aabec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2049–2074.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem msb_smod {x y : BitVec w} :
    (x.smod y).msb = (x.msb && y = 0) || (y.msb && (x.smod y) ≠ 0) := by
  rw [msb_eq_toInt]
  by_cases hx : x.msb <;> by_cases hy : y.msb
  · by_cases hsmod : x.smod y = 0#w <;> simp [hx, hy, hsmod]
  · simp only [hx, ofNat_eq_ofNat, Bool.true_and, decide_eq_decide, decide_iff_dist, hy, ne_eq,
      decide_not, Bool.false_and, Bool.or_false, beq_iff_eq]
    constructor
    · intro h
      apply Classical.byContradiction
      intro hcontra
      rw [toInt_smod] at h
      have := toInt_nonneg_of_msb_false (by simp at hy; exact hy)
      have := Int.fmod_nonneg_of_pos (a := x.toInt) (b := y.toInt) (by simp [← toInt_inj] at hcontra; omega)
      omega
    · intro h
      simp only [h, smod_zero]
      exact toInt_neg_of_msb_true hx
  · by_cases hsmod : x.smod y = 0#w <;> simp [hx, hy, hsmod]
  · simp only [toInt_smod, hx, ofNat_eq_ofNat, Bool.false_and, decide_eq_false_iff_not, Int.not_lt,
      hy, ne_eq, decide_not, Bool.or_false, decide_eq_true_eq]
    simp only [not_eq_true] at hx hy
    apply Int.fmod_nonneg (by exact toInt_nonneg_of_msb_false hx) (by exact toInt_nonneg_of_msb_false hy)

/-! ### Lemmas that use bit blasting circuits -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean#L2049).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77050a46ff99d345da672844caf68022db57852a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
