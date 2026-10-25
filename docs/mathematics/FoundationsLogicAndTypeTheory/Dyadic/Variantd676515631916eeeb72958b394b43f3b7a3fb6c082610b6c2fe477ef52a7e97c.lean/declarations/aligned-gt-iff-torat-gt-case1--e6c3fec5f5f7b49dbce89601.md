# aligned_gt_iff_toRat_gt_case1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1a36128-b29b-0d5e-110b-2455f89b29ab",
  "kind": "theorem",
  "lexical_name": "aligned_gt_iff_toRat_gt_case1",
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
  "slug": "aligned-gt-iff-torat-gt-case1--e6c3fec5f5f7b49dbce89601",
  "source": {
    "blob": "7a11771e83344217b96835a985a05ee76e480373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 648,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6c3fec5f5f7b49dbce8960140c116731d050e5c575143027371277f4a2f09ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1a36128-b29b-0d5e-110b-2455f89b29ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem aligned_gt_iff_toRat_gt_case1 (d₁ d₂ : Dyadic) (h : d₁.exponent ≤ d₂.exponent) :
    d₁.mantissa > shiftLeftInt d₂.mantissa (d₂.exponent - d₁.exponent).toNat ↔ d₁.toRat > d₂.toRat := by
  set shift := (d₂.exponent - d₁.exponent).toNat with hshift_def
  have hshift : (shift : ℤ) = d₂.exponent - d₁.exponent := by
    rw [hshift_def, Int.toNat_of_nonneg]; omega
  rw [toRat_eq, toRat_eq]
  have hpow : (2 : ℚ) ^ d₂.exponent = (2 : ℚ) ^ (shift : ℤ) * 2 ^ d₁.exponent := by
    rw [← zpow_add₀ (two_ne_zero : (2 : ℚ) ≠ 0), hshift]; congr 1; omega
  have hpos : (0 : ℚ) < 2 ^ d₁.exponent := zpow_pos (by norm_num : (0 : ℚ) < 2) _
  have hrhs : (d₂.mantissa : ℚ) * 2 ^ d₂.exponent = d₂.mantissa * (2 : ℚ) ^ shift * 2 ^ d₁.exponent := by
    rw [hpow, zpow_natCast, mul_assoc]
  rw [hrhs, int_gt_iff_rat_mul_gt _ _ _ hpos, shiftLeftInt_toRat]

/-- Helper: Convert aligned integer comparison to toRat comparison (case e₁ > e₂) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Dyadic/Variantd676515631916eeeb72958b394b43f3b7a3fb6c082610b6c2fe477ef52a7e97c.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a11771e83344217b96835a985a05ee76e480373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
