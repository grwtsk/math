# isUpper_toUpper_eq_isAlpha

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd889a50-5a7c-cbad-2860-29969e1811d8",
  "kind": "theorem",
  "lexical_name": "isUpper_toUpper_eq_isAlpha",
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
  "slug": "isupper-toupper-eq-isalpha--e6c3ce2e5a1e215a5194acd5",
  "source": {
    "blob": "61bd2d4a6bb415ea26adef61fced13345254bc96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variantee1877d0ebaa17ace2c93b95ef75860e1d3a34f260ff7ea2b79650ac8c7617ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6c3ce2e5a1e215a5194acd54a668cb1cd9815188c46312729e3b0170a032fdf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variantee1877d0ebaa17ace2c93b95ef75860e1d3a34f260ff7ea2b79650ac8c7617ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd889a50-5a7c-cbad-2860-29969e1811d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem isUpper_toUpper_eq_isAlpha (c : Char) : c.toUpper.isUpper = c.isAlpha := by
  rw [Bool.eq_iff_iff]
  by_cases h : c.isLower
  · simp only [isUpper, h, toUpper_eq_of_isLower, ↓Char.isValue, Char.reduceVal, ge_iff_le,
      UInt32.le_iff_toNat_le, UInt32.reduceToNat, toNat_val, Bool.decide_and, Bool.and_eq_true,
      decide_eq_true_eq, isAlpha, Bool.or_true, iff_true]
    simp only [isLower, ↓Char.isValue, Char.reduceVal, ge_iff_le, UInt32.le_iff_toNat_le,
      UInt32.reduceToNat, toNat_val, Bool.and_eq_true, decide_eq_true_eq] at h
    have : (c.toNat - 32).isValidChar := by omega
    have : 32 ≤ c.toNat := by omega
    simp [toNat_ofNat, Nat.le_sub_iff_add_le, *]
  · simp [toUpper_eq_of_not_isLower, isAlpha, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variantee1877d0ebaa17ace2c93b95ef75860e1d3a34f260ff7ea2b79650ac8c7617ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AsciiCasing/Variantee1877d0ebaa17ace2c93b95ef75860e1d3a34f260ff7ea2b79650ac8c7617ed.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61bd2d4a6bb415ea26adef61fced13345254bc96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
