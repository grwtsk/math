# mem_carrier_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03bedeb48b5ce4954a9e01e778c1ba92abf66688",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9721dae-6bb4-358d-8ca1-a208a35eff8a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ecf53eec-c5dd-1f9d-aa4d-3d3542933757",
  "kind": "theorem",
  "lexical_name": "mem_carrier_iff",
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
  "slug": "mem-carrier-iff--50a02b85270bb7631cb275c3",
  "source": {
    "blob": "03bedeb48b5ce4954a9e01e778c1ba92abf66688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50a02b85270bb7631cb275c355c5705366a8fef0feb3dd76c35a77c41abc96c1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecf53eec-c5dd-1f9d-aa4d-3d3542933757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_carrier_iff (A : Subspace K V) (x : ℙ K V) : x ∈ A.carrier ↔ x ∈ A :=
  Iff.refl _
#align projectivization.subspace.mem_carrier_iff Projectivization.Subspace.mem_carrier_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variantdfaaa8c6890ded26d8c809713bc52ccb529d131aa0cc5c44fc037956a9ebae96.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03bedeb48b5ce4954a9e01e778c1ba92abf66688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
