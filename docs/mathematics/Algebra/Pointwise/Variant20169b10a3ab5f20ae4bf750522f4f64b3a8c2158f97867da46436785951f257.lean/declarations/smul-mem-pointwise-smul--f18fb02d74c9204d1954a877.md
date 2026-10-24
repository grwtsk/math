# smul_mem_pointwise_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "915fb6843d3cfb95757572529f4a1ca766725a78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b1fdeee-2a50-f5c7-03f0-9aa506b2f3b3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f562f5c9-0969-57d0-f050-0cab8f25f055",
  "kind": "theorem",
  "lexical_name": "smul_mem_pointwise_smul",
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
  "slug": "smul-mem-pointwise-smul--f18fb02d74c9204d1954a877",
  "source": {
    "blob": "915fb6843d3cfb95757572529f4a1ca766725a78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 99,
    "path": "GRWTSK/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f18fb02d74c9204d1954a8779b18fff5548446f7a2870d725fe36414ab736104",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f562f5c9-0969-57d0-f050-0cab8f25f055`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_mem_pointwise_smul (m : R') (r : A) (S : Subalgebra R A) : r ∈ S → m • r ∈ m • S :=
  (Set.smul_mem_smul_set : _ → _ ∈ m • (S : Set A))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variant20169b10a3ab5f20ae4bf750522f4f64b3a8c2158f97867da46436785951f257.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `915fb6843d3cfb95757572529f4a1ca766725a78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
