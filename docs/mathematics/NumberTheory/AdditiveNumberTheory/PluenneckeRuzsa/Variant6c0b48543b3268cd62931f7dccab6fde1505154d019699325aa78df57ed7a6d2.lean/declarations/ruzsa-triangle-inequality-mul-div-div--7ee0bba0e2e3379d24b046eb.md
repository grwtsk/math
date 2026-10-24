# ruzsa_triangle_inequality_mul_div_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34db5a8b-fa85-7e1d-186f-3cd9ee1642a8",
  "kind": "theorem",
  "lexical_name": "ruzsa_triangle_inequality_mul_div_div",
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
  "slug": "ruzsa-triangle-inequality-mul-div-div--7ee0bba0e2e3379d24b046eb",
  "source": {
    "blob": "9287c2dd07ecfe8a770ebfb7b40a6c06d4102111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 198,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ee0bba0e2e3379d24b046eb4d96988d9033bcb157216713c521d270ccbf7c79",
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

Occurrence: `result:34db5a8b-fa85-7e1d-186f-3cd9ee1642a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ruzsa_triangle_inequality_mul_div_div (A B C : Finset G) :
    #(A * C) * #B ≤ #(A / B) * #(B / C) := by
  rw [div_eq_mul_inv, ← card_inv B, ← card_inv (B / C), inv_div', div_inv_eq_mul]
  exact ruzsa_triangle_inequality_mul_mul_mul _ _ _

/-- **Ruzsa's triangle inequality**. Div-mul-div version. -/
@[to_additive "**Ruzsa's triangle inequality**. Sub-add-sub version."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/PluenneckeRuzsa/Variant6c0b48543b3268cd62931f7dccab6fde1505154d019699325aa78df57ed7a6d2.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9287c2dd07ecfe8a770ebfb7b40a6c06d4102111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
