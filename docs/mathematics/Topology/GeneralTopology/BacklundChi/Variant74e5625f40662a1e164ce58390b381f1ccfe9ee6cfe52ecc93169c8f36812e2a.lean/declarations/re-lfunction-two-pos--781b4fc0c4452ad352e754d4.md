# re_LFunction_two_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a18097d-a78c-c36b-6af8-dea864e1998d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:558f6563-576b-cfe0-2daf-4bbf4f999b14",
  "kind": "lemma",
  "lexical_name": "re_LFunction_two_pos",
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
  "slug": "re-lfunction-two-pos--781b4fc0c4452ad352e754d4",
  "source": {
    "blob": "3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:781b4fc0c4452ad352e754d409703a2f5375a1db5992dd8927172131b9981824",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:558f6563-576b-cfe0-2daf-4bbf4f999b14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma re_LFunction_two_pos (t : ℝ) : 0 < (χ.LFunction (2 + t * I)).re := by
  have h := norm_LFunction_sub_one_le (χ := χ) (s := 2 + t * I) (by simp)
  have h2 : |(χ.LFunction (2 + t * I) - 1).re| ≤ ‖χ.LFunction (2 + t * I) - 1‖ :=
    Complex.abs_re_le_norm _
  rw [Complex.sub_re, Complex.one_re] at h2
  have h3 := (abs_le.mp (h2.trans h)).1
  linarith [Zeta23.RvM.pi_sq_div_six_sub_one_lt_one]

/-- `t ↦ log ζ(2+it)` is a primitive of `t ↦ ζ'/ζ(2+it)·i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BacklundChi/Variant74e5625f40662a1e164ce58390b381f1ccfe9ee6cfe52ecc93169c8f36812e2a.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e9a7b0ff894a2eec2d58f7cd0fc09a7c51e9738` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
