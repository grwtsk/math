# finrank_quotient_span_eq_natDegree_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9b8c5dc-71bf-a834-e4fd-819791342812",
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
  "slug": "finrank-quotient-span-eq-natdegree-norm--a1c52cb1d0591d6eeb1827ed",
  "source": {
    "blob": "e5e87f5674622b78bdb2fcfb8a9640846b8fe112",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1c52cb1d0591d6eeb1827ed50c0cf4dac8dd87279922b1a645d4363d4c8eb35",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9b8c5dc-71bf-a834-e4fd-819791342812`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_quotient_span_eq_natDegree_norm [Algebra F S] [IsScalarTower F F[X] S]
    (b : Basis ι F[X] S) {f : S} (hf : f ≠ 0) :
    Module.finrank F (S ⧸ span ({f} : Set S)) = (Algebra.norm F[X] f).natDegree := by
  haveI := Fintype.ofFinite ι
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Norm/Variante41b49c3cdd64274a973d128d80f510b2d49803505b86f03296433c41d36cc3f.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5e87f5674622b78bdb2fcfb8a9640846b8fe112` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
