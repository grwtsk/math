# irrational_sqrt_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39c4802d9fc069cb478269172f5807ef173cfbaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:634a6658-cbc0-d355-609b-b64139778da0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2a4eb28-d099-521f-361f-285b875b0347",
  "kind": "theorem",
  "lexical_name": "irrational_sqrt_nat",
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
  "slug": "irrational-sqrt-nat--cead8c0897597837f1522137",
  "source": {
    "blob": "39c4802d9fc069cb478269172f5807ef173cfbaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 239,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cead8c0897597837f1522137037657367dd36c94408f15bbf8f32a1b5ce71302",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2a4eb28-d099-521f-361f-285b875b0347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem irrational_sqrt_nat {x : ℝ} {n k : ℕ}
    (hx_isNat : IsNat x n)
    (hn1 : k ^ 2 < n)
    (hn2 : n < (k + 1) ^ 2) :
    Irrational (Real.sqrt x) :=
  irrational_sqrt_rat_of_num hx_isNat.to_isRat (by simp) hn1 hn2

end lemmas

/-- To prove that `m` is not `n`-power (and thus `m ^ (1/n)` is irrational), we find `k` such that
`k ^ n < m < (k + 1) ^ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39c4802d9fc069cb478269172f5807ef173cfbaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
