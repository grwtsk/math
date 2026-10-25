# neg_udiv_eq_intMin_iff_eq_intMin_eq_one_of_msb_eq_true

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a4a735b-78ff-9def-f0f3-8b784e2d654f",
  "kind": "theorem",
  "lexical_name": "neg_udiv_eq_intMin_iff_eq_intMin_eq_one_of_msb_eq_true",
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
  "slug": "neg-udiv-eq-intmin-iff-eq-intmin-eq-one-of-msb-eq-true--1b0ec1275aae0994a98628be",
  "source": {
    "blob": "77050a46ff99d345da672844caf68022db57852a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1694,
    "line": 1677,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b0ec1275aae0994a98628bea2928e23337c567407f3bef7cdc6b80371c0a874",
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

Occurrence: `result:6a4a735b-78ff-9def-f0f3-8b784e2d654f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1677–1694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem neg_udiv_eq_intMin_iff_eq_intMin_eq_one_of_msb_eq_true
    {x y : BitVec w} (hx : x.msb = true) (hy : y.msb = false) :
    -x / y = intMin w ↔ (x = intMin w ∧ y = 1#w) := by
  constructor
  · intro h
    rcases w with _ | w; decide +revert
    have : (-x / y).msb = true := by simp [h, msb_intMin]
    rw [msb_udiv] at this
    simp only [bool_to_prop] at this
    obtain ⟨hx, hy⟩ := this
    simp only [beq_iff_eq] at hy
    subst hy
    simp only [udiv_one, neg_eq_intMin] at h
    simp [h]
  · rintro ⟨hx, hy⟩
    subst hx hy
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean#L1677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77050a46ff99d345da672844caf68022db57852a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
