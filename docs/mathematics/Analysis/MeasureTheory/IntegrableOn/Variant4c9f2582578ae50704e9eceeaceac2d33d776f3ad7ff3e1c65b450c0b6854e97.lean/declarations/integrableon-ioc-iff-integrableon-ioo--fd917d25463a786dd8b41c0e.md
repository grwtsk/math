# integrableOn_Ioc_iff_integrableOn_Ioo'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2eb4851b-6818-2ca1-fbc2-5b17077cb5ac",
  "kind": "theorem",
  "lexical_name": "integrableOn_Ioc_iff_integrableOn_Ioo'",
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
  "slug": "integrableon-ioc-iff-integrableon-ioo--fd917d25463a786dd8b41c0e",
  "source": {
    "blob": "9b000638b28d1dbc542c5e2e53ca7b509e5bb560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 681,
    "line": 674,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd917d25463a786dd8b41c0e75eed613884d24b99d45d6b2a84d7a67fabf0c3d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2eb4851b-6818-2ca1-fbc2-5b17077cb5ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–681.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Ioc_iff_integrableOn_Ioo' (hb : μ {b} ≠ ∞) :
    IntegrableOn f (Ioc a b) μ ↔ IntegrableOn f (Ioo a b) μ := by
  by_cases hab : a < b
  · rw [← Ioo_union_right hab, integrableOn_union,
      eq_true (integrableOn_singleton_iff.mpr <| Or.inr hb.lt_top), and_true_iff]
  · rw [Ioo_eq_empty hab, Ioc_eq_empty hab]
#align integrable_on_Ioc_iff_integrable_on_Ioo' integrableOn_Ioc_iff_integrableOn_Ioo'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b000638b28d1dbc542c5e2e53ca7b509e5bb560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
