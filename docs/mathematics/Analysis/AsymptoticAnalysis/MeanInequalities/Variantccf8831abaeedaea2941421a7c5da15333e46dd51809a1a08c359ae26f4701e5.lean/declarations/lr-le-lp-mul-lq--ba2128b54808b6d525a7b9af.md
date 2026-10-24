# Lr_le_Lp_mul_Lq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e20e1507-7f36-4346-4132-4fc12349d815",
  "kind": "theorem",
  "lexical_name": "Lr_le_Lp_mul_Lq",
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
  "slug": "lr-le-lp-mul-lq--ba2128b54808b6d525a7b9af",
  "source": {
    "blob": "bfb8dec0cd98bcfafac05da9fafea42ae61f1c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 657,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba2128b54808b6d525a7b9af07224243fe8a4071bebbd09c7fa146bb080bb00f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e20e1507-7f36-4346-4132-4fc12349d815`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Lr_le_Lp_mul_Lq (f g : ι → ℝ≥0) {p q r : ℝ} (hpqr : p.HolderTriple q r) :
    (∑ i ∈ s, (f i * g i) ^ r) ^ (1 / r) ≤
      (∑ i ∈ s, f i ^ p) ^ (1 / p) * (∑ i ∈ s, g i ^ q) ^ (1 / q) := by
  convert
    rpow_le_rpow_iff (inv_eq_one_div r ▸ inv_pos.mpr hpqr.pos' : 0 < 1 / r) |>.mpr <|
      Lr_rpow_le_Lp_mul_Lq s f g hpqr
  have hr := hpqr.pos'.ne'
  simp only [← rpow_mul, mul_rpow]
  field_simp

/-- **Weighted Hölder inequality**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfb8dec0cd98bcfafac05da9fafea42ae61f1c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
