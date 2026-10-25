# im_eq_sub_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f875167-7c0e-822c-6846-7e25515d5862",
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
  "slug": "im-eq-sub-conj--9c635dcabf4a019ec7f3dcf5",
  "source": {
    "blob": "db28a6adb957e834869f76e0c9fef938a2d00f21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 947,
    "line": 933,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9b62e55bff1629e1b59a8c228cd48f79450c81b02751df6b1af1e959dbbbe730.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c635dcabf4a019ec7f3dcf537d7bf876e074d0baa4b452616ec386d2b9c5963",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9b62e55bff1629e1b59a8c228cd48f79450c81b02751df6b1af1e959dbbbe730.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f875167-7c0e-822c-6846-7e25515d5862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 933–947.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9b62e55bff1629e1b59a8c228cd48f79450c81b02751df6b1af1e959dbbbe730.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant9b62e55bff1629e1b59a8c228cd48f79450c81b02751df6b1af1e959dbbbe730.lean#L933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db28a6adb957e834869f76e0c9fef938a2d00f21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
