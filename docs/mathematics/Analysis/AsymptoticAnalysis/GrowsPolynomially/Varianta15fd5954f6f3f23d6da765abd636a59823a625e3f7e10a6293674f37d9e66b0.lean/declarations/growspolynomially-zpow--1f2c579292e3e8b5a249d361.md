# growsPolynomially_zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e753c81350bb40e2349beb527280533ec39af843",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 601,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a1/a15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63e56490-31b8-cea9-768f-8e8171cf324c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dc2904a-032e-2eed-d14a-cc8d83fa0aea",
  "kind": "lemma",
  "lexical_name": "growsPolynomially_zpow",
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
  "slug": "growspolynomially-zpow--1f2c579292e3e8b5a249d361",
  "source": {
    "blob": "e753c81350bb40e2349beb527280533ec39af843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 601,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f2c579292e3e8b5a249d3610a051746e4fd32552b22ed2108b83b09b5acfb75",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dc2904a-032e-2eed-d14a-cc8d83fa0aea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma growsPolynomially_zpow (p : ℤ) : GrowsPolynomially fun x => x ^ p :=
  growsPolynomially_id.zpow p (eventually_ge_atTop 0)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Varianta15fd5954f6f3f23d6da765abd636a59823a625e3f7e10a6293674f37d9e66b0.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e753c81350bb40e2349beb527280533ec39af843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
