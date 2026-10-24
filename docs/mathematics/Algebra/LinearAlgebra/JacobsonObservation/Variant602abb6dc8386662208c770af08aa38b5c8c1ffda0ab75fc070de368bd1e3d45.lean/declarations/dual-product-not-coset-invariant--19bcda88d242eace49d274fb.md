# dual_product_not_coset_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a97c6e1a246978b58edf3c5f7034f0dcb3b47b98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cc243427-c330-031f-f556-263f9d0d7d8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11b44e02-f514-0e0f-7090-cceacc6493e7",
  "kind": "theorem",
  "lexical_name": "dual_product_not_coset_invariant",
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
  "slug": "dual-product-not-coset-invariant--19bcda88d242eace49d274fb",
  "source": {
    "blob": "a97c6e1a246978b58edf3c5f7034f0dcb3b47b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19bcda88d242eace49d274fb64b176312257f8c683951da5b286664b76287f70",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11b44e02-f514-0e0f-7090-cceacc6493e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dual_product_not_coset_invariant :
    ¬ CosetInvariant ((Ring.jacobson (DualNumber ℝ)).restrictScalars ℝ) dualProduct := by
  intro h
  have heq := h 1 DualNumber.eps dual_eps_mem_jacobson
  norm_num [dualProduct, TrivSqZeroExt.fst_add, TrivSqZeroExt.snd_add] at heq

/-- A concrete obstruction to arbitrary-function quotient factorization, even
though the quantity vanishes on the genuine Jacobson radical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variant602abb6dc8386662208c770af08aa38b5c8c1ffda0ab75fc070de368bd1e3d45.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a97c6e1a246978b58edf3c5f7034f0dcb3b47b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
