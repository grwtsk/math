# symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:002878ac-0d93-b926-0fbc-862c0540bf83",
  "kind": "theorem",
  "lexical_name": "symm",
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
  "slug": "symm--42c7d834ffe50bcb94d754bb",
  "source": {
    "blob": "36cb6e3569e3ca26e10e16aca78ce017fdb7412c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 116,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variant9108107592acdb06ecf30771a2d08ec129216dfe7c0c7a519d4d5af2d8372cd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42c7d834ffe50bcb94d754bb4d48f272c8a611b17bb87d0680fae92ec1f631c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ray/Variant9108107592acdb06ecf30771a2d08ec129216dfe7c0c7a519d4d5af2d8372cd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:002878ac-0d93-b926-0fbc-862c0540bf83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm (h : SameRay R x y) : SameRay R y x :=
  (or_left_comm.1 h).imp_right <| Or.imp_right fun ⟨r₁, r₂, h₁, h₂, h⟩ => ⟨r₂, r₁, h₂, h₁, h.symm⟩

/-- If `x` and `y` are nonzero vectors on the same ray, then there exist positive numbers `r₁ r₂`
such that `r₁ • x = r₂ • y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ray/Variant9108107592acdb06ecf30771a2d08ec129216dfe7c0c7a519d4d5af2d8372cd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ray/Variant9108107592acdb06ecf30771a2d08ec129216dfe7c0c7a519d4d5af2d8372cd9.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36cb6e3569e3ca26e10e16aca78ce017fdb7412c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
