# xi_order_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d39c737-6cd1-c4be-55bf-cc216964ec8a",
  "kind": "theorem",
  "lexical_name": "xi_order_finite",
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
  "slug": "xi-order-finite--26b4bd5965efef5f49cf2173",
  "source": {
    "blob": "b9274ac95ae8d1ebd0c9947327c8d76790d23006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26b4bd5965efef5f49cf2173c3d7cc12b5d61ffee595b03582ca47be7d4b6f85",
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

Occurrence: `result:9d39c737-6cd1-c4be-55bf-cc216964ec8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_order_finite {s : ℂ} (hs : s ∈ comparisonDomain) :
    analyticOrderAt XiToeplitz.xi s ≠ ⊤ := by
  rw [xi_order_eq_zeta hs]
  exact ZeroObject.zeta_order_finite hs.2.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiNormalizationDraft/Variantbe8abaed4f7b6771cd52f3b20251117de1745b92dcbee78a23e3db86710d336b.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9274ac95ae8d1ebd0c9947327c8d76790d23006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
