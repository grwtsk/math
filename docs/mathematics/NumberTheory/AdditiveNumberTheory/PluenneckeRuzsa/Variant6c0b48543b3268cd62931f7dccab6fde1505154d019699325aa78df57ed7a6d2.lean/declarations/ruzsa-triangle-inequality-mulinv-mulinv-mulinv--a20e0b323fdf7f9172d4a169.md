# ruzsa_triangle_inequality_mulInv_mulInv_mulInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e21cdbd-0e4a-1a4f-29c4-51736f00b31e",
  "kind": "theorem",
  "lexical_name": "ruzsa_triangle_inequality_mulInv_mulInv_mulInv",
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
  "slug": "ruzsa-triangle-inequality-mulinv-mulinv-mulinv--a20e0b323fdf7f9172d4a169",
  "source": {
    "blob": "9287c2dd07ecfe8a770ebfb7b40a6c06d4102111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 73,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a20e0b323fdf7f9172d4a169a7fd2dd31539b0816a7182f3fe5e998bd28c04de",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e21cdbd-0e4a-1a4f-29c4-51736f00b31e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ruzsa_triangle_inequality_mulInv_mulInv_mulInv (A B C : Finset G) :
    #(A * C⁻¹) * #B ≤ #(A * B⁻¹) * #(C * B⁻¹) := by
  simpa [div_eq_mul_inv] using ruzsa_triangle_inequality_div_div_div A B C

/-- **Ruzsa's triangle inequality**. Invmul-invmul-invmul version. -/
@[to_additive "**Ruzsa's triangle inequality**. Negadd-negadd-negadd version."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9287c2dd07ecfe8a770ebfb7b40a6c06d4102111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
