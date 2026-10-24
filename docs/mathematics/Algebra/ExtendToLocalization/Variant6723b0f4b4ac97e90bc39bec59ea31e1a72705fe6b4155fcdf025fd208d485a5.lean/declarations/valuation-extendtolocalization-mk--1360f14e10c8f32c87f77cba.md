# Valuation.extendToLocalization_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47a387be77b21c3fb193e83b7948da928b5d9f81",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c39cd19c-5c10-eab0-e77b-d5278f142967",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c93cb149-b6e4-bcfe-242a-99085383f86d",
  "kind": "theorem",
  "lexical_name": "Valuation.extendToLocalization_mk'",
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
  "slug": "valuation-extendtolocalization-mk--1360f14e10c8f32c87f77cba",
  "source": {
    "blob": "47a387be77b21c3fb193e83b7948da928b5d9f81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/Algebra/ExtendToLocalization/Variant6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1360f14e10c8f32c87f77cbaf1ca6321728f739ed4162fd8bc5131fa94dda35e",
  "verification": {
    "reference": "docs/verification/Algebra/ExtendToLocalization/Variant6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c93cb149-b6e4-bcfe-242a-99085383f86d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valuation.extendToLocalization_mk' (x : A) (y : S) :
    (v.extendToLocalization hS B) (IsLocalization.mk' _ x y) = v x * (v y)⁻¹ :=
  (Submonoid.LocalizationMap.lift_mk' _ _ _ _).trans (by
    simp [IsUnit.coe_liftRight (v.toMonoidWithZeroHom.domRestrict S)
      (fun y ↦ isUnit_iff_ne_zero.2 (hS y.2)) y])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ExtendToLocalization/Variant6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ExtendToLocalization/Variant6723b0f4b4ac97e90bc39bec59ea31e1a72705fe6b4155fcdf025fd208d485a5.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47a387be77b21c3fb193e83b7948da928b5d9f81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
