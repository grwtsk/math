# one_div_Gamma_eq_self_mul_one_div_Gamma_add_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10081219-1ac6-3419-5cf6-dc9726108b50",
  "kind": "theorem",
  "lexical_name": "one_div_Gamma_eq_self_mul_one_div_Gamma_add_one",
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
  "slug": "one-div-gamma-eq-self-mul-one-div-gamma-add-one--adcef9674025d444c7e228c1",
  "source": {
    "blob": "8205d98c464988b5b42b312a91dbbd200b08876a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 538,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adcef9674025d444c7e228c16ddcadd285249cf76120c521092730d7b40080df",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10081219-1ac6-3419-5cf6-dc9726108b50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_div_Gamma_eq_self_mul_one_div_Gamma_add_one (s : ℂ) :
    (Gamma s)⁻¹ = s * (Gamma (s + 1))⁻¹ := by
  rcases ne_or_eq s 0 with (h | rfl)
  · rw [Gamma_add_one s h, mul_inv, mul_inv_cancel_left₀ h]
  · rw [zero_add, Gamma_zero, inv_zero, zero_mul]
#align complex.one_div_Gamma_eq_self_mul_one_div_Gamma_add_one Complex.one_div_Gamma_eq_self_mul_one_div_Gamma_add_one

/-- The reciprocal of the Gamma function is differentiable everywhere (including the points where
Gamma itself is not). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variant44c59b9d64006cb35e38d1ccd5cf7aef8106c15d79024c0db80a6553678f37a2.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8205d98c464988b5b42b312a91dbbd200b08876a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
