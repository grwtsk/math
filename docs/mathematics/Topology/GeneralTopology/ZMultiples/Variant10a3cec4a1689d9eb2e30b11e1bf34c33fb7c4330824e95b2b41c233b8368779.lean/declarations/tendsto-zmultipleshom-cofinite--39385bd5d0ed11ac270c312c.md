# tendsto_zmultiplesHom_cofinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60c9fad3-d921-f1c0-4b20-a608f88a36f8",
  "kind": "theorem",
  "lexical_name": "tendsto_zmultiplesHom_cofinite",
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
  "slug": "tendsto-zmultipleshom-cofinite--39385bd5d0ed11ac270c312c",
  "source": {
    "blob": "808397606770f458f9a4de051fd3fe022b219109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/ZMultiples/Variant10a3cec4a1689d9eb2e30b11e1bf34c33fb7c4330824e95b2b41c233b8368779.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39385bd5d0ed11ac270c312c1e111b6ee6602cb6c38e27989754b521cd04be7f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZMultiples/Variant10a3cec4a1689d9eb2e30b11e1bf34c33fb7c4330824e95b2b41c233b8368779.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60c9fad3-d921-f1c0-4b20-a608f88a36f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_zmultiplesHom_cofinite {a : ℝ} (ha : a ≠ 0) :
    Tendsto (zmultiplesHom ℝ a) cofinite (cocompact ℝ) := by
  apply (zmultiplesHom ℝ a).tendsto_coe_cofinite_of_isDiscrete <| smul_left_injective ℤ ha
  rw [AddSubgroup.range_zmultiplesHom, SetLike.isDiscrete_iff_discreteTopology]
  infer_instance

end Int

namespace AddSubgroup

/-- The subgroup "multiples of `a`" (`zmultiples a`) is a discrete subgroup of `ℝ`, i.e. its
intersection with compact sets is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZMultiples/Variant10a3cec4a1689d9eb2e30b11e1bf34c33fb7c4330824e95b2b41c233b8368779.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZMultiples/Variant10a3cec4a1689d9eb2e30b11e1bf34c33fb7c4330824e95b2b41c233b8368779.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `808397606770f458f9a4de051fd3fe022b219109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
