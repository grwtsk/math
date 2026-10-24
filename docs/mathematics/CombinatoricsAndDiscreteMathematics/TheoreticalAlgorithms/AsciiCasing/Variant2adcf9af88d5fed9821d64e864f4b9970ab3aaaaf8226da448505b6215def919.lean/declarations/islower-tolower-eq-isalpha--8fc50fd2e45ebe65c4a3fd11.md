# isLower_toLower_eq_isAlpha

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a776ecad-f04f-96b2-10ba-f278832dbda0",
  "kind": "theorem",
  "lexical_name": "isLower_toLower_eq_isAlpha",
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
  "slug": "islower-tolower-eq-isalpha--8fc50fd2e45ebe65c4a3fd11",
  "source": {
    "blob": "a3c5886eb6cd3e56291540d95b200a4ea6aa3161",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant2adcf9af88d5fed9821d64e864f4b9970ab3aaaaf8226da448505b6215def919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fc50fd2e45ebe65c4a3fd111145758818a9794799d7b6950cfced5221018c73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant2adcf9af88d5fed9821d64e864f4b9970ab3aaaaf8226da448505b6215def919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a776ecad-f04f-96b2-10ba-f278832dbda0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem isLower_toLower_eq_isAlpha (c : Char) : c.toLower.isLower = c.isAlpha := by
  rw [Bool.eq_iff_iff]
  by_cases h : c.isUpper
  · simp only [isLower, h, toLower_eq_of_isUpper, ↓Char.isValue, Char.reduceVal, ge_iff_le,
      UInt32.le_iff_toNat_le, UInt32.reduceToNat, toNat_val, Bool.and_eq_true, decide_eq_true_eq,
      isAlpha, Bool.true_or, iff_true]
    simp only [isUpper, ↓Char.isValue, Char.reduceVal, ge_iff_le, UInt32.le_iff_toNat_le,
      UInt32.reduceToNat, toNat_val, Bool.decide_and, Bool.and_eq_true, decide_eq_true_eq] at h
    have : (c.toNat + 32).isValidChar := by omega
    simp [toNat_ofNat, *]
  · simp [toLower_eq_of_not_isUpper, isAlpha, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant2adcf9af88d5fed9821d64e864f4b9970ab3aaaaf8226da448505b6215def919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant2adcf9af88d5fed9821d64e864f4b9970ab3aaaaf8226da448505b6215def919.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c5886eb6cd3e56291540d95b200a4ea6aa3161` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
