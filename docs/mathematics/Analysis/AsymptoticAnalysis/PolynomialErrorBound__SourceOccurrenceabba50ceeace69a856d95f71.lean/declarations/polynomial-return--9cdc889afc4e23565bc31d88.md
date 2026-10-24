# polynomial_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37917461-562e-808b-f5a1-068824bba04a",
  "kind": "theorem",
  "lexical_name": "polynomial_return",
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
  "slug": "polynomial-return--9cdc889afc4e23565bc31d88",
  "source": {
    "blob": "408a212e1afc64104fdd09e08e4f95a9fecb551b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 17,
    "path": "GRWTSK/Analysis/Asymptotics/PolynomialErrorBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cdc889afc4e23565bc31d8886e1485706a213533f289a619b3f12710f1d010c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PolynomialErrorBound__SourceOccurrenceabba50ceeace69a856d95f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37917461-562e-808b-f5a1-068824bba04a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_return {X R e : ℝ → ℝ} {CR Ce r s : ℝ}
    (hCR : 0 ≤ CR) (hCe : 0 ≤ Ce)
    (hid : ∀ T, 0 ≤ T → X T = R T + e T)
    (hR : ∀ T, 0 ≤ T → R T ≤ CR * (1+T)^r)
    (he : ∀ T, 0 ≤ T → |e T| ≤ Ce * (1+T)^s) :
    ∀ T, 0 ≤ T → X T ≤ (CR+Ce)*(1+T)^(max r s) := by
  intro T hT
  have hb : 1 ≤ 1+T := by linarith
  have hpR := Real.rpow_le_rpow_of_exponent_le hb (le_max_left r s)
  have hpE := Real.rpow_le_rpow_of_exponent_le hb (le_max_right r s)
  rw [hid T hT]
  calc
    R T + e T ≤ CR*(1+T)^r + Ce*(1+T)^s := add_le_add (hR T hT) ((le_abs_self _).trans (he T hT))
    _ ≤ CR*(1+T)^(max r s) + Ce*(1+T)^(max r s) :=
      add_le_add (mul_le_mul_of_nonneg_left hpR hCR) (mul_le_mul_of_nonneg_left hpE hCe)
    _ = _ := by ring


end GRWTSK.Analysis.Waveform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/PolynomialErrorBound__SourceOccurrenceabba50ceeace69a856d95f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/PolynomialErrorBound.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `408a212e1afc64104fdd09e08e4f95a9fecb551b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
