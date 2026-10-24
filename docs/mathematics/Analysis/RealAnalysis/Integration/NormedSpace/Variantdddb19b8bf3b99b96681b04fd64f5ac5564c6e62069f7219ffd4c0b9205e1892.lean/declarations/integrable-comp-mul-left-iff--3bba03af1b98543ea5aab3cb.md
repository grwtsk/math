# integrable_comp_mul_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0196db245a689af1ea0980815b816b17bfcbd643",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ef0a746-bdf8-784d-a24f-715f95e1641d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:285b9776-e7cb-c28f-1e20-9b4e0f1b1e54",
  "kind": "theorem",
  "lexical_name": "integrable_comp_mul_left_iff",
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
  "slug": "integrable-comp-mul-left-iff--3bba03af1b98543ea5aab3cb",
  "source": {
    "blob": "0196db245a689af1ea0980815b816b17bfcbd643",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3bba03af1b98543ea5aab3cbf6b4065f14b27aa4e3de078d359a1f50d7e3e53b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:285b9776-e7cb-c28f-1e20-9b4e0f1b1e54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_comp_mul_left_iff (g : ℝ → F) {R : ℝ} (hR : R ≠ 0) :
    (Integrable fun x => g (R * x)) ↔ Integrable g := by
  simpa only [smul_eq_mul] using integrable_comp_smul_iff volume g hR

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NormedSpace/Variantdddb19b8bf3b99b96681b04fd64f5ac5564c6e62069f7219ffd4c0b9205e1892.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0196db245a689af1ea0980815b816b17bfcbd643` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
