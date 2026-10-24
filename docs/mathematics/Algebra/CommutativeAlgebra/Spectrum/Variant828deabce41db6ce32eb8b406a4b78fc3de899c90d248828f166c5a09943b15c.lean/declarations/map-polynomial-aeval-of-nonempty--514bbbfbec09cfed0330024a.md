# map_polynomial_aeval_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b78fc971-2ef2-533a-6dcb-bea37bcf67b9",
  "kind": "theorem",
  "lexical_name": "map_polynomial_aeval_of_nonempty",
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
  "slug": "map-polynomial-aeval-of-nonempty--514bbbfbec09cfed0330024a",
  "source": {
    "blob": "b2e56bea9ed36db909526904dc9d6b57158e46a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 122,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:514bbbfbec09cfed0330024aff2f080d7db95cc820de51fec17e6969271c5ff9",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b78fc971-2ef2-533a-6dcb-bea37bcf67b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_polynomial_aeval_of_nonempty [IsAlgClosed 𝕜] (a : A) (p : 𝕜[X])
    (hnon : (σ a).Nonempty) : σ (aeval a p) = (fun k => eval k p) '' σ a := by
  nontriviality A
  refine Or.elim (le_or_gt (degree p) 0) (fun h => ?_) (map_polynomial_aeval_of_degree_pos a p)
  rw [eq_C_of_degree_le_zero h]
  simp only [Set.image_congr, eval_C, aeval_C, scalar_eq, Set.Nonempty.image_const hnon]

/-- A specialization of `spectrum.subset_polynomial_aeval` to monic monomials for convenience. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Spectrum/Variant828deabce41db6ce32eb8b406a4b78fc3de899c90d248828f166c5a09943b15c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2e56bea9ed36db909526904dc9d6b57158e46a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
