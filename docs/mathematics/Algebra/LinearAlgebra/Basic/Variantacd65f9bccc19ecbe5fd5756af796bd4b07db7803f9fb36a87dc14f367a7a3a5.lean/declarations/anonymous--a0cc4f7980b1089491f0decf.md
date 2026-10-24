# ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad7b9db99526a8b2f5b038645e2fc16f4d1c78028c923f8fc4cad4a057f6c897",
  "kind": "abbrev",
  "lexical_name": "ι",
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
  "slug": "anonymous--a0cc4f7980b1089491f0decf",
  "source": {
    "blob": "b7811de23e368269d332cd5864c603b50a2bffd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0cc4f7980b1089491f0decfb7e06511e46ffd553fab2a478e8e7625be8b9102",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad7b9db99526a8b2f5b038645e2fc16f4d1c78028c923f8fc4cad4a057f6c897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ι : M →ₗ[R] ExteriorAlgebra R M :=
  CliffordAlgebra.ι _

section exteriorPower

-- New variables `n` and `M`, to get the correct order of variables in the notation.
variable (n : ℕ) (M : Type u2) [AddCommGroup M] [Module R M]

/-- Definition of the `n`th exterior power of a `R`-module `N`. We introduce the notation
`⋀[R]^n M` for `exteriorPower R n M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantacd65f9bccc19ecbe5fd5756af796bd4b07db7803f9fb36a87dc14f367a7a3a5.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7811de23e368269d332cd5864c603b50a2bffd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
