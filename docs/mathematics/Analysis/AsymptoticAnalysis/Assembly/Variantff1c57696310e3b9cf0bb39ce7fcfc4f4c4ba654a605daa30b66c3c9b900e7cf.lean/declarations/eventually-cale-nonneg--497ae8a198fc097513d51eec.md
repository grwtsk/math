# eventually_calE_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1335,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ff/ff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff3542d9-cf41-4834-c402-197eef5472a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a2b05c6-ef1a-3350-0635-7949ae855793",
  "kind": "lemma",
  "lexical_name": "eventually_calE_nonneg",
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
  "slug": "eventually-cale-nonneg--497ae8a198fc097513d51eec",
  "source": {
    "blob": "3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1344,
    "line": 1335,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:497ae8a198fc097513d51eec13ba4767294f08c9cfa69d162bddacccc6c85719",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a2b05c6-ef1a-3350-0635-7949ae855793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1335–1344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_calE_nonneg (P : Params) (hlam : 0 < P.lam) (hw : 0 ≤ P.w) :
    ∀ᶠ T in atTop, 0 ≤ P.calE T := by
  filter_upwards [eventually_one_le_l, eventually_gt_atTop (0:ℝ)] with T hl hT
  have hL : 0 < P.L T := by simp only [Params.L]; nlinarith
  have hlog : 0 ≤ Real.log (l T) := Real.log_nonneg hl
  have hX : 0 < P.X T := Real.exp_pos _
  simp only [Params.calE]
  positivity

/-- `0 ≤ F(x) ≤ 1` for `0 ≤ x ≤ 1` (indeed `F(x) ≤ x`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Assembly/Variantff1c57696310e3b9cf0bb39ce7fcfc4f4c4ba654a605daa30b66c3c9b900e7cf.lean#L1335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e08238ba18d831cfa7ecdcbddda6ee5b1e8df26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
