# PowerBasis.norm_gen_eq_prod_roots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9235c3cdc1d3618835c4d2a19324089d9abcd5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2916761-bcce-f09f-0d62-f62dac07749a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d0c886c-2268-6513-b038-bccb8af0289b",
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
  "slug": "powerbasis-norm-gen-eq-prod-roots--24f4a2b5844b13efabb97d50",
  "source": {
    "blob": "e9235c3cdc1d3618835c4d2a19324089d9abcd5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24f4a2b5844b13efabb97d505554b84975cb54440406ce4c9a8657401440432a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d0c886c-2268-6513-b038-bccb8af0289b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PowerBasis.norm_gen_eq_prod_roots [Algebra R F] (pb : PowerBasis R S)
    (hf : (minpoly R pb.gen).Splits (algebraMap R F)) :
    algebraMap R F (norm R pb.gen) = ((minpoly R pb.gen).aroots F).prod := by
  haveI := Module.nontrivial R F
  have := minpoly.monic pb.isIntegral_gen
  rw [PowerBasis.norm_gen_eq_coeff_zero_minpoly, ← pb.natDegree_minpoly, RingHom.map_mul,
    ← coeff_map,
    prod_roots_eq_coeff_zero_of_monic_of_splits (this.map _) ((splits_id_iff_splits _).2 hf),
    this.natDegree_map, map_pow, ← mul_assoc, ← mul_pow]
  simp only [map_neg, map_one, neg_mul, neg_neg, one_pow, one_mul]

end EqProdRoots

section EqZeroIff

variable [Finite ι]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9235c3cdc1d3618835c4d2a19324089d9abcd5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
