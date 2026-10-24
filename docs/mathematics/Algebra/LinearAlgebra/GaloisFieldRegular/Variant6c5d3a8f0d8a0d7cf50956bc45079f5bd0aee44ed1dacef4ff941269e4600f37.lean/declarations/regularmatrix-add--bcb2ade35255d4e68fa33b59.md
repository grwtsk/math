# regularMatrix_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d501631dcaa36963996b1c81b258054c1c4907e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18ea78f1-fbf6-2fa7-35f4-d9b2648a32f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb6aceb4-011d-cd29-6fe3-92aeb4634d45",
  "kind": "theorem",
  "lexical_name": "regularMatrix_add",
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
  "slug": "regularmatrix-add--bcb2ade35255d4e68fa33b59",
  "source": {
    "blob": "6d501631dcaa36963996b1c81b258054c1c4907e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcb2ade35255d4e68fa33b59e9a1526e22e9f8c48f774612068a37bd7fd8f3f3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb6aceb4-011d-cd29-6fe3-92aeb4634d45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularMatrix_add
    (b : Basis (Fin r) GF2 F)
    (a c : F) :
    regularMatrix b (a + c) =
      regularMatrix b a + regularMatrix b c := by
  change Algebra.leftMulMatrix b (a + c) =
    Algebra.leftMulMatrix b a + Algebra.leftMulMatrix b c
  exact map_add (Algebra.leftMulMatrix b) a c

/--
Regular matrices preserve multiplication using ordinary matrix multiplication
in the same order.  This is the `LinearMap.toMatrix` convention for composition
of the left-multiplication operators.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GaloisFieldRegular/Variant6c5d3a8f0d8a0d7cf50956bc45079f5bd0aee44ed1dacef4ff941269e4600f37.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d501631dcaa36963996b1c81b258054c1c4907e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
