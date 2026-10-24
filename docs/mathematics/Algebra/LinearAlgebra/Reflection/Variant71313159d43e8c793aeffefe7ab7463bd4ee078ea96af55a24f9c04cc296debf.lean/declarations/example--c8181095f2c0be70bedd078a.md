# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a006526f09a9385e9d94035bfafbf760eb8319f4e61d906e9d80ea9d303dcae7",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--c8181095f2c0be70bedd078a",
  "source": {
    "blob": "cff81c83f403b676b46f212076a4ce259658f421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8181095f2c0be70bedd078a25923618c450f92c0de42ecdb02274f5a5992d19",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a006526f09a9385e9d94035bfafbf760eb8319f4e61d906e9d80ea9d303dcae7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example [NonUnitalNonAssocSemiring α] (a₁₁ a₁₂ a₂₁ a₂₂ b₁ b₂ : α) :
    !![a₁₁, a₁₂; a₂₁, a₂₂] *ᵥ ![b₁, b₂] = ![a₁₁ * b₁ + a₁₂ * b₂, a₂₁ * b₁ + a₂₂ * b₂] :=
  (mulVecᵣ_eq _ _).symm

/-- `Matrix.vecMul` with better defeq for `Fin` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variant71313159d43e8c793aeffefe7ab7463bd4ee078ea96af55a24f9c04cc296debf.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cff81c83f403b676b46f212076a4ce259658f421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
