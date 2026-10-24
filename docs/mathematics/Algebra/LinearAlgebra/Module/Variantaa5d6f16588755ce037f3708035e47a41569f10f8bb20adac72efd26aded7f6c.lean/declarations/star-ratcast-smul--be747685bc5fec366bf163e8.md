# star_ratCast_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9405a6eeff22fe7bdfdf18fa2c313984df57277d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d49bce06-739e-9ab4-238d-ffc1c24543d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88d5d9ce-c874-b09b-3fdc-6929efb39d91",
  "kind": "theorem",
  "lexical_name": "star_ratCast_smul",
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
  "slug": "star-ratcast-smul--be747685bc5fec366bf163e8",
  "source": {
    "blob": "9405a6eeff22fe7bdfdf18fa2c313984df57277d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 59,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be747685bc5fec366bf163e8d215e6b16ed99962adf7676d2cd72d9d7a5705e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88d5d9ce-c874-b09b-3fdc-6929efb39d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star_ratCast_smul [DivisionRing R] [AddCommGroup M] [Module R M] [StarAddMonoid M] (n : ℚ)
    (x : M) : star ((n : R) • x) = (n : R) • star x :=
  map_ratCast_smul (starAddEquiv : M ≃+ M) _ _ _ x

/-!
Per the naming convention, these two lemmas call `(q • ·)` `nnrat_smul` and `rat_smul` respectively,
rather than `nnqsmul` and `qsmul` because the latter are reserved to the actions coming from
`DivisionSemiring` and `DivisionRing`. We provide aliases with `nnqsmul` and `qsmul` for
discoverability.
-/

/-- Note that this lemma holds for an arbitrary `ℚ≥0`-action, rather than merely one coming from a
`DivisionSemiring`. We keep both the `nnqsmul` and `nnrat_smul` naming conventions for
discoverability. See `star_nnqsmul`. -/
@[simp high]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantaa5d6f16588755ce037f3708035e47a41569f10f8bb20adac72efd26aded7f6c.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9405a6eeff22fe7bdfdf18fa2c313984df57277d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
