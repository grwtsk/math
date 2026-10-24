# valuation_of_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c52aa94c-cecc-5884-a7c0-9d584757a01f",
  "kind": "theorem",
  "lexical_name": "valuation_of_mk'",
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
  "slug": "valuation-of-mk--8fe7c900b35361d66a8dd145",
  "source": {
    "blob": "01459b30636367b86f6fa08480022ecb9ff9f71f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 282,
    "path": "GRWTSK/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fe7c900b35361d66a8dd145a805efe45c85afe3effb21c764c1f5067d28aa4d",
  "verification": {
    "reference": "docs/verification/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c52aa94c-cecc-5884-a7c0-9d584757a01f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_of_mk' {r : R} {s : nonZeroDivisors R} :
    v.valuation (IsLocalization.mk' K r s) = v.intValuation r / v.intValuation s := by
  erw [valuation_def, (IsLocalization.toLocalizationMap (nonZeroDivisors R) K).lift_mk',
    div_eq_mul_inv, mul_eq_mul_left_iff]
  left
  rw [Units.val_inv_eq_inv_val, inv_inj]
  rfl
#align is_dedekind_domain.height_one_spectrum.valuation_of_mk' IsDedekindDomain.HeightOneSpectrum.valuation_of_mk'

/-- The `v`-adic valuation on `K` extends the `v`-adic valuation on `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AdicValuation/Variant935d030b6c8c2de91bd164df97cdc614cf83d6b4a3030e4996edd0060acac0a7.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01459b30636367b86f6fa08480022ecb9ff9f71f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
