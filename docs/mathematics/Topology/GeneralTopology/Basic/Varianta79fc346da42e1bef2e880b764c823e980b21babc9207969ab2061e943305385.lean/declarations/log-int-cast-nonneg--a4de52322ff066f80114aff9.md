# log_int_cast_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7842acb5fe55332a2b878514d3b012087e11ca01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a79fc346da42e1bef2e880b764c823e980b21babc9207969ab2061e943305385.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cac9c49-484a-3002-62a1-db1f31a459f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76b07f79-31fb-898b-65d8-e9bb0d1456b0",
  "kind": "theorem",
  "lexical_name": "log_int_cast_nonneg",
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
  "slug": "log-int-cast-nonneg--a4de52322ff066f80114aff9",
  "source": {
    "blob": "7842acb5fe55332a2b878514d3b012087e11ca01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta79fc346da42e1bef2e880b764c823e980b21babc9207969ab2061e943305385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4de52322ff066f80114aff952a85878c63754e6d58ee32d48865a91571e1d0c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta79fc346da42e1bef2e880b764c823e980b21babc9207969ab2061e943305385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b07f79-31fb-898b-65d8-e9bb0d1456b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_int_cast_nonneg (n : ℤ) : 0 ≤ log n := by
  cases lt_trichotomy 0 n with
  | inl hn =>
      have : (1 : ℝ) ≤ n := by exact_mod_cast hn
      exact log_nonneg this
  | inr hn =>
      cases hn with
      | inl hn => simp [hn.symm]
      | inr hn =>
          have : (1 : ℝ) ≤ -n := by rw [←neg_zero, ←lt_neg] at hn; exact_mod_cast hn
          rw [←log_neg_eq_log]
          exact log_nonneg this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta79fc346da42e1bef2e880b764c823e980b21babc9207969ab2061e943305385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta79fc346da42e1bef2e880b764c823e980b21babc9207969ab2061e943305385.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7842acb5fe55332a2b878514d3b012087e11ca01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
