# toLower_toUpper_eq_toLower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fc5f0d1-7e7a-5ca1-3587-cf8b07f14d56",
  "kind": "theorem",
  "lexical_name": "toLower_toUpper_eq_toLower",
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
  "slug": "tolower-toupper-eq-tolower--6e639bf9bb135d4cc7301258",
  "source": {
    "blob": "ec16c190f358609b6949bee529026a98cd664832",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e639bf9bb135d4cc7301258026015a66355451f8951db54c59d388d4f154d0c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fc5f0d1-7e7a-5ca1-3587-cf8b07f14d56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem toLower_toUpper_eq_toLower (c : Char) : c.toUpper.toLower = c.toLower := by
  by_cases hl : c.isLower
  · have hu : ¬ c.isUpper := not_isUpper_of_isLower hl
    have hu' : c.toUpper.isUpper := by simp [isAlpha, hl]
    have hv : (c.toNat - 32).isValidChar := by
      simp only [isLower, isUpper, UInt32.le_iff_toNat_le, toNat_val] at hl hu
      grind
    have h : 32 ≤ c.toNat := by
      simp only [isLower, ↓Char.isValue, Char.reduceVal, ge_iff_le, UInt32.le_iff_toNat_le,
        UInt32.reduceToNat, toNat_val, Bool.and_eq_true, decide_eq_true_eq, isUpper,
        Bool.decide_and, not_and, Nat.not_le] at hl hu
      omega
    rw [toLower_eq_of_isUpper hu', toUpper_eq_of_isLower hl, toLower_eq_of_not_isUpper hu,
      toNat_ofNat, ite_eq_left hv, Nat.sub_add_cancel h, ofNat_toNat]
  · rw [toUpper_eq_of_not_isLower hl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variant468280c72f0204dd6a561cd6a73ba4aea3c57b0452db2f4d5dc331ba5f1e7e50.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec16c190f358609b6949bee529026a98cd664832` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
