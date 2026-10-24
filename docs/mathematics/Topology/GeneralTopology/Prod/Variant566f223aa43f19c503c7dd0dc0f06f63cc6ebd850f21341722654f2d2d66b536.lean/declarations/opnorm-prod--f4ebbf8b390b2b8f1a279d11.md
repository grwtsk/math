# opNorm_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4438acc3-f72d-2942-ce7d-34a1eb417138",
  "kind": "theorem",
  "lexical_name": "opNorm_prod",
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
  "slug": "opnorm-prod--f4ebbf8b390b2b8f1a279d11",
  "source": {
    "blob": "a6216c6a4ed687f31b656cb82cf3563358b00e31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant566f223aa43f19c503c7dd0dc0f06f63cc6ebd850f21341722654f2d2d66b536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4ebbf8b390b2b8f1a279d1196ae362a2d618507faa68b5fa2572bd436485f2a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant566f223aa43f19c503c7dd0dc0f06f63cc6ebd850f21341722654f2d2d66b536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4438acc3-f72d-2942-ce7d-34a1eb417138`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opNorm_prod (f : E →L[𝕜] F) (g : E →L[𝕜] G) : ‖f.prod g‖ = ‖(f, g)‖ :=
  le_antisymm
      (opNorm_le_bound _ (norm_nonneg _) fun x => by
        simpa only [prod_apply, Prod.norm_def, max_mul_of_nonneg, norm_nonneg] using
          max_le_max (le_opNorm f x) (le_opNorm g x)) <|
    max_le
      (opNorm_le_bound _ (norm_nonneg _) fun x =>
        (le_max_left _ _).trans ((f.prod g).le_opNorm x))
      (opNorm_le_bound _ (norm_nonneg _) fun x =>
        (le_max_right _ _).trans ((f.prod g).le_opNorm x))


@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant566f223aa43f19c503c7dd0dc0f06f63cc6ebd850f21341722654f2d2d66b536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant566f223aa43f19c503c7dd0dc0f06f63cc6ebd850f21341722654f2d2d66b536.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6216c6a4ed687f31b656cb82cf3563358b00e31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
