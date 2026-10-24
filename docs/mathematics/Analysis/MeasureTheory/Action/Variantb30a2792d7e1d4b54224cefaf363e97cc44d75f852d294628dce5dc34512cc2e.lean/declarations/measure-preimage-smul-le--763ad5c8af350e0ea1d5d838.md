# measure_preimage_smul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eff93e0c-f8e7-b721-47b7-6c8e21f1812c",
  "kind": "theorem",
  "lexical_name": "measure_preimage_smul_le",
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
  "slug": "measure-preimage-smul-le--763ad5c8af350e0ea1d5d838",
  "source": {
    "blob": "63a05cdc8b6e89f9ee6afe4b1a41ae78fbf0b6d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 73,
    "path": "GRWTSK/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:763ad5c8af350e0ea1d5d8388e64099f5c41aea615e75284c4817145f93fd150",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eff93e0c-f8e7-b721-47b7-6c8e21f1812c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_preimage_smul_le (c : G) (s : Set α) : μ ((c • ·) ⁻¹' s) ≤ μ s :=
  (outerMeasure_le_iff (m := .map (c • ·) μ.1)).2
    (fun _s hs ↦ (SMulInvariantMeasure.measure_preimage_smul _ hs).le) _

/-- See also `smul_ae`. -/
@[to_additive "See also `vadd_ae`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Action/Variantb30a2792d7e1d4b54224cefaf363e97cc44d75f852d294628dce5dc34512cc2e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a05cdc8b6e89f9ee6afe4b1a41ae78fbf0b6d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
