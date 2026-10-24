# rename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ec383f281d740e2c24e1e41e84f4e78de8abedbc928e8639f81987143b9abef",
  "kind": "def",
  "lexical_name": "rename",
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
  "slug": "rename--4df62f212e9a465decba22d2",
  "source": {
    "blob": "d16ddf46015ca45c086f648b3fde88d740fce8b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 56,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4df62f212e9a465decba22d28700c85dc307c57e908514b6d24efcb38c59d5f2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ec383f281d740e2c24e1e41e84f4e78de8abedbc928e8639f81987143b9abef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rename (f : σ → τ) : MvPolynomial σ R →ₐ[R] MvPolynomial τ R :=
  aeval (X ∘ f)
#align mv_polynomial.rename MvPolynomial.rename

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Rename/Variant071f3ae9e0e2e1dcd183bd8e0d1859d2812281dc736fd331f122ba7df34ceb1d.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d16ddf46015ca45c086f648b3fde88d740fce8b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
