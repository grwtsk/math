# exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc18028c-4bdb-31db-37e4-a2fd78e7b237",
  "kind": "lemma",
  "lexical_name": "exact",
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
  "slug": "exact--5eac9597030caf8fb7358aff",
  "source": {
    "blob": "168b18568e9582bd3fb2edd667b6f773b0b1e736",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 319,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eac9597030caf8fb7358aff866b15e5c25e09d2e14deab9ef51998f722fa40b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc18028c-4bdb-31db-37e4-a2fd78e7b237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exact : Function.Exact relations.map solution.π := by
  rw [LinearMap.exact_iff, range_map, ← solution.injective_fromQuotient_iff_ker_π_eq_span]
  exact h.bijective.1

variable {N : Type v'} [AddCommGroup N] [Module A N]

/-- If `M` admits a presentation by generators and relations, and we have a solution of the
same equations in a module `N`, then this is the canonical induced linear map `M →ₗ[A] N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfacac995619a882e57098e50c52f6a02c0f7edc8b7d347cab9d0c7541963bce5.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168b18568e9582bd3fb2edd667b6f773b0b1e736` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
