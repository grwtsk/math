# xi_order_eq_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab609f92-b3cf-ad5e-81b1-4f4a786f9e3e",
  "kind": "theorem",
  "lexical_name": "xi_order_eq_zeta",
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
  "slug": "xi-order-eq-zeta--6944d8e00bab49251be0e68f",
  "source": {
    "blob": "b9274ac95ae8d1ebd0c9947327c8d76790d23006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6944d8e00bab49251be0e68f1a9b9bf6d5ab553f9fbcb18692c2265faf27a6d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab609f92-b3cf-ad5e-81b1-4f4a786f9e3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_order_eq_zeta {s : ℂ} (hs : s ∈ comparisonDomain) :
    analyticOrderAt XiToeplitz.xi s = analyticOrderAt riemannZeta s := by
  rw [analyticOrderAt_congr (xi_eventuallyEq_normalization hs)]
  change analyticOrderAt (prefactor * riemannZeta) s = _
  rw [analyticOrderAt_mul (prefactor_analytic hs) (analyticOn_riemannZeta s hs.2.1),
    (prefactor_analytic hs).analyticOrderAt_eq_zero.mpr (prefactor_ne_zero hs), zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9274ac95ae8d1ebd0c9947327c8d76790d23006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
