# im_eq_sub_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8bd1286488b7b9fc73a9ca5796151cdd6dc400d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 925,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8fe69837-351a-1eb3-ea99-f5719d3a600e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5d18942-b4ce-0843-cb13-72da28f42682",
  "kind": "theorem",
  "lexical_name": "im_eq_sub_conj",
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
  "slug": "im-eq-sub-conj--4d2c91aef97395e67394ae01",
  "source": {
    "blob": "8bd1286488b7b9fc73a9ca5796151cdd6dc400d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 939,
    "line": 925,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d2c91aef97395e67394ae017c2e2c9cd9bbe98e4f1fd5ec74b8933e377dd944",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5d18942-b4ce-0843-cb13-72da28f42682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 925–939.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem im_eq_sub_conj (z : ℂ) : (z.im : ℂ) = (z - conj z) / (2 * I) := by
  have : (↑2 : ℝ ) * I = 2 * I := by rfl
  simp only [sub_conj, ofReal_mul, ofReal_one, ofReal_bit0, mul_right_comm, this,
    mul_div_cancel_left _ (mul_ne_zero two_ne_zero I_ne_zero : 2 * I ≠ 0)]
#align complex.im_eq_sub_conj Complex.im_eq_sub_conj

/-! ### Absolute value -/


namespace AbsTheory

-- We develop enough theory to bundle `abs` into an `AbsoluteValue` before making things public;
-- this is so there's not two versions of it hanging around.
local notation "abs" z => Real.sqrt (normSq z)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2d1c99730c783076d4ebda5a63abd469e98072e70378c2d223c4ce964ec5ff27.lean#L925).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bd1286488b7b9fc73a9ca5796151cdd6dc400d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
