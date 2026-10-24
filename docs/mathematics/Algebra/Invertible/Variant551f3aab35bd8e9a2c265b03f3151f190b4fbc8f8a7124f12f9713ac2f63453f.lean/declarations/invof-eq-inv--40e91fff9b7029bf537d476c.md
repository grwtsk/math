# invOf_eq_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:649f2754-ea30-bc57-beb7-b542693d73b0",
  "kind": "theorem",
  "lexical_name": "invOf_eq_inv",
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
  "slug": "invof-eq-inv--40e91fff9b7029bf537d476c",
  "source": {
    "blob": "f5fca414770e20d89b5575641102e9f981152662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 58,
    "path": "GRWTSK/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40e91fff9b7029bf537d476cd875082cecccf452027efb08e199d4856d09fe07",
  "verification": {
    "reference": "docs/verification/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:649f2754-ea30-bc57-beb7-b542693d73b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invOf_eq_inv (a : α) [Invertible a] : ⅟ a = a⁻¹ :=
  invOf_eq_right_inv (mul_inv_cancel₀ (Invertible.ne_zero a))

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Invertible/Variant551f3aab35bd8e9a2c265b03f3151f190b4fbc8f8a7124f12f9713ac2f63453f.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5fca414770e20d89b5575641102e9f981152662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
