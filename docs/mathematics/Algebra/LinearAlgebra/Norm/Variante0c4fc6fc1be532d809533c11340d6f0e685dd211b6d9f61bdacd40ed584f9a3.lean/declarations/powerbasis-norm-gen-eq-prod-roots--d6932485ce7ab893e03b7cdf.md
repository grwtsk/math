# PowerBasis.norm_gen_eq_prod_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12daca3406924e941496944e3d762231deb161d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c917f578-6c8f-c7cb-e88f-f4b9924e6da8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0c8073c-566c-9a1d-2b86-1a65e2005953",
  "kind": "theorem",
  "lexical_name": "PowerBasis.norm_gen_eq_prod_roots",
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
  "slug": "powerbasis-norm-gen-eq-prod-roots--d6932485ce7ab893e03b7cdf",
  "source": {
    "blob": "12daca3406924e941496944e3d762231deb161d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6932485ce7ab893e03b7cdf8328700358842e3bfc1b513f08f007ac1c867b3d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0c8073c-566c-9a1d-2b86-1a65e2005953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PowerBasis.norm_gen_eq_prod_roots [Algebra R F] (pb : PowerBasis R S)
    (hf : (minpoly R pb.gen).Splits (algebraMap R F)) :
    algebraMap R F (norm R pb.gen) = ((minpoly R pb.gen).map (algebraMap R F)).roots.prod := by
  haveI := Module.nontrivial R F
  have := minpoly.monic pb.isIntegral_gen
  rw [PowerBasis.norm_gen_eq_coeff_zero_minpoly, ← pb.natDegree_minpoly, RingHom.map_mul,
    ← coeff_map,
    prod_roots_eq_coeff_zero_of_monic_of_split (this.map _) ((splits_id_iff_splits _).2 hf),
    this.natDegree_map, map_pow, ← mul_assoc, ← mul_pow]
  · simp only [map_neg, _root_.map_one, neg_mul, neg_neg, one_pow, one_mul]
#align algebra.power_basis.norm_gen_eq_prod_roots Algebra.PowerBasis.norm_gen_eq_prod_roots

end EqProdRoots

section EqZeroIff

variable [Finite ι]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variante0c4fc6fc1be532d809533c11340d6f0e685dd211b6d9f61bdacd40ed584f9a3.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12daca3406924e941496944e3d762231deb161d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
