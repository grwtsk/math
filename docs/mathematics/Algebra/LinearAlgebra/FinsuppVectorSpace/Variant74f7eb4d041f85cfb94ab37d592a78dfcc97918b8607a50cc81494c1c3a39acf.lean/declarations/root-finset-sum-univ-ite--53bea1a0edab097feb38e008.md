# _root_.Finset.sum_univ_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f859c85d1235de6f8a303bf5adbe385fa78aa184",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e575f485-8b8c-0bde-85dc-2024de04f6f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:374dba05-17ff-642c-20cf-956d6bdfb876",
  "kind": "theorem",
  "lexical_name": "_root_.Finset.sum_univ_ite",
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
  "slug": "root-finset-sum-univ-ite--53bea1a0edab097feb38e008",
  "source": {
    "blob": "f859c85d1235de6f8a303bf5adbe385fa78aa184",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 169,
    "path": "GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53bea1a0edab097feb38e008dcfd9b9703d5da54e478378e222035c5ae20550c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:374dba05-17ff-642c-20cf-956d6bdfb876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Finset.sum_univ_ite (b : n → M) (i : n) :
    (Finset.sum Finset.univ fun (x : n) => (if i = x then (1:R) else 0) • b x) = b i := by
  simp only [ite_smul, zero_smul, one_smul, Finset.sum_ite_eq, Finset.mem_univ, ite_true]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FinsuppVectorSpace/Variant74f7eb4d041f85cfb94ab37d592a78dfcc97918b8607a50cc81494c1c3a39acf.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f859c85d1235de6f8a303bf5adbe385fa78aa184` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
