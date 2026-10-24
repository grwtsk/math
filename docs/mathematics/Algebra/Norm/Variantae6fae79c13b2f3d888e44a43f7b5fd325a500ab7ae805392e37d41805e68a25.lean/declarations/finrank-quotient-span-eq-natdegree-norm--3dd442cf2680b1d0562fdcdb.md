# finrank_quotient_span_eq_natDegree_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "186bdb994e1b76e2c157f466b8d54f76f62d8463",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae6fae79c13b2f3d888e44a43f7b5fd325a500ab7ae805392e37d41805e68a25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e824242-ac05-5396-a2dd-00dd4136ccc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90e3e905-f8dd-e900-5b4e-d50161107d6c",
  "kind": "theorem",
  "lexical_name": "finrank_quotient_span_eq_natDegree_norm",
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
  "slug": "finrank-quotient-span-eq-natdegree-norm--3dd442cf2680b1d0562fdcdb",
  "source": {
    "blob": "186bdb994e1b76e2c157f466b8d54f76f62d8463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/Algebra/Norm/Variantae6fae79c13b2f3d888e44a43f7b5fd325a500ab7ae805392e37d41805e68a25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dd442cf2680b1d0562fdcdb416a9492cc44709e8e4d8b942901ba66ae15cf43",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variantae6fae79c13b2f3d888e44a43f7b5fd325a500ab7ae805392e37d41805e68a25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90e3e905-f8dd-e900-5b4e-d50161107d6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_quotient_span_eq_natDegree_norm [Algebra F S] [IsScalarTower F F[X] S]
    (b : Basis ι F[X] S) {f : S} (hf : f ≠ 0) :
    Module.finrank F (S ⧸ span ({f} : Set S)) = (Algebra.norm F[X] f).natDegree := by
  have := Fintype.ofFinite ι
  have h := span_singleton_eq_bot.not.2 hf
  rw [natDegree_eq_of_degree_eq
      (degree_eq_degree_of_associated <| associated_norm_prod_smith b hf)]
  rw [natDegree_prod _ _ fun i _ => smithCoeffs_ne_zero b _ h i, finrank_quotient_eq_sum F h b]
  congr with i
  exact (AdjoinRoot.powerBasis <| smithCoeffs_ne_zero b _ h i).finrank

end Field
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Norm/Variantae6fae79c13b2f3d888e44a43f7b5fd325a500ab7ae805392e37d41805e68a25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variantae6fae79c13b2f3d888e44a43f7b5fd325a500ab7ae805392e37d41805e68a25.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `186bdb994e1b76e2c157f466b8d54f76f62d8463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
