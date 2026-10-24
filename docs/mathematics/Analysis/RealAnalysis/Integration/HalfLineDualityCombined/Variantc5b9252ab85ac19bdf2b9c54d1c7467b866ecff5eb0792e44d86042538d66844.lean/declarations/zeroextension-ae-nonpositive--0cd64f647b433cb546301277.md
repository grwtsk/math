# zeroExtension_ae_nonpositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1ed822dd75dc3402aa1f367a2bf9f2d6df23007e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b40cffbc-a235-68d1-14e0-48c2e7f22477",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:086c0d9e-99f4-7caf-4651-8b9202fdfc03",
  "kind": "theorem",
  "lexical_name": "zeroExtension_ae_nonpositive",
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
  "slug": "zeroextension-ae-nonpositive--0cd64f647b433cb546301277",
  "source": {
    "blob": "1ed822dd75dc3402aa1f367a2bf9f2d6df23007e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 81,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cd64f647b433cb54630127775e3ac7f75c6a39a169629ffdd1f57d706ba7875",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:086c0d9e-99f4-7caf-4651-8b9202fdfc03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroExtension_ae_nonpositive (f : H) :
    zeroExtension f =ᵐ[volume.restrict (Iic (0 : ℝ))] (fun _ => 0) := by
  filter_upwards [ae_restrict_of_ae (zeroExtension_ae f), ae_restrict_mem measurableSet_Iic]
    with x hx hnonpos
  rw [hx, indicator_of_notMem]
  change ¬0 < x
  exact not_lt.mpr (show x ≤ 0 from hnonpos)

/-- Restriction is Mathlib's genuine Lp restriction continuous linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityCombined/Variantc5b9252ab85ac19bdf2b9c54d1c7467b866ecff5eb0792e44d86042538d66844.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ed822dd75dc3402aa1f367a2bf9f2d6df23007e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
