# shellGrowth_fmodif_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ce9607c563cafa832ac2d432131a3bd4e4ea72e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b10ac7bc-bc6c-7047-7281-cff8be1e7beb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b961d6b-cd92-cb99-7353-ff89a494ba1b",
  "kind": "lemma",
  "lexical_name": "shellGrowth_fmodif_im",
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
  "slug": "shellgrowth-fmodif-im--42ca7ea2304b36566655c788",
  "source": {
    "blob": "0ce9607c563cafa832ac2d432131a3bd4e4ea72e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42ca7ea2304b36566655c788a44637429ed29e55cbe63e72b80257e9bc8d6cd6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b961d6b-cd92-cb99-7353-ff89a494ba1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shellGrowth_fmodif_im (t : ℝ) :
    ((hurwitzEvenFEPair 0).f_modif t).im = 0 := by
  simp only [WeakFEPair.f_modif, Pi.add_apply]
  by_cases ha : t ∈ Ioi (1 : ℝ) <;> by_cases hb : t ∈ Ioo (0 : ℝ) 1 <;>
    simp [ha, hb, hurwitzEvenFEPair]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositivity/Variantc3bfd6017d61742079b25c989d66b3c8c436f907199e2123e381d2079f7e5a48.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ce9607c563cafa832ac2d432131a3bd4e4ea72e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
