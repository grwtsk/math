# seam_algebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9075d190b390cc893b1b52995743711afcc1a6b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:721ed974-1906-d0d6-49da-ca26fae31cd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e2af64e-3135-2c51-269a-7dfbb4614161",
  "kind": "theorem",
  "lexical_name": "seam_algebra",
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
  "slug": "seam-algebra--0781dd94914c3fd8fc2f28da",
  "source": {
    "blob": "9075d190b390cc893b1b52995743711afcc1a6b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 30,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2beSeamAlgebraScrat/Variant1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0781dd94914c3fd8fc2f28da8c16e04ff6c6512487f0f932c2ba6cee2833bd86",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2beSeamAlgebraScrat/Variant1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e2af64e-3135-2c51-269a-7dfbb4614161`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seam_algebra (A : ℝ) (hAn : A ≠ 0) : bumpCorrelation (2 - 15 / A) / 16 -
      (1 / A ^ 2) * bumpCorrelationSecond (2 - 15 / A) / 2 +
      (1 / A ^ 2) ^ 2 * bumpCorrelationFourth (2 - 15 / A) =
      -(455625 * (21152708708203125 + 39698670531093750 * (A - 15) +
        19438586772750000 * (A - 15)^2 + 4578940532700000 * (A - 15)^3 +
        614846274300000 * (A - 15)^4 + 49701147912000 * (A - 15)^5 +
        2395655558400 * (A - 15)^6 + 63360028160 * (A - 15)^7 +
        705106688 * (A - 15)^8)) / (544544 * A^17) := by
    dsimp [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]
    field_simp
    ring

end SeamScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2beSeamAlgebraScrat/Variant1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2beSeamAlgebraScrat/Variant1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9075d190b390cc893b1b52995743711afcc1a6b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
