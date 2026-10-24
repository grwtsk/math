# intPow_ofNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "384aae3c53c58ed96570c88c7151ce959041af15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f8dede77-0097-bc83-5227-2c5a543c7e0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd1824ca-907a-329d-50de-f2c3b0d38e47",
  "kind": "theorem",
  "lexical_name": "intPow_ofNat",
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
  "slug": "intpow-ofnat--88a9a524efbcf7eb4eb6bb3a",
  "source": {
    "blob": "384aae3c53c58ed96570c88c7151ce959041af15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 112,
    "path": "GRWTSK/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a9a524efbcf7eb4eb6bb3a5f54aef065d36db74f64013ec71ed0452aa0baea",
  "verification": {
    "reference": "docs/verification/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd1824ca-907a-329d-50de-f2c3b0d38e47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intPow_ofNat (h1 : Nat.pow a b = c) :
    Int.pow (Int.ofNat a) b = Int.ofNat c := by simp [← h1]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `384aae3c53c58ed96570c88c7151ce959041af15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
