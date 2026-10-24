# finrank_quotient_span_eq_natDegree_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01aa8f76-81c5-721a-8927-4e0c63143dd6",
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
  "slug": "finrank-quotient-span-eq-natdegree-norm--2c1460aa10788c053e5df80d",
  "source": {
    "blob": "2d2723d23304a6db6c01177b9ac9dbab59eecfdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/Algebra/Norm/Variant5b4c241c99d3b6dcd32307c3758655b3385c7445b2957cc9b1236685003f29b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c1460aa10788c053e5df80d8ee53bda9cc362a7d14af1aef6a5ae9a3ad74292",
  "verification": {
    "reference": "docs/verification/Algebra/Norm/Variant5b4c241c99d3b6dcd32307c3758655b3385c7445b2957cc9b1236685003f29b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01aa8f76-81c5-721a-8927-4e0c63143dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

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

[Verification target and public status](../../../../../verification/Algebra/Norm/Variant5b4c241c99d3b6dcd32307c3758655b3385c7445b2957cc9b1236685003f29b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Norm/Variant5b4c241c99d3b6dcd32307c3758655b3385c7445b2957cc9b1236685003f29b5.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d2723d23304a6db6c01177b9ac9dbab59eecfdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
