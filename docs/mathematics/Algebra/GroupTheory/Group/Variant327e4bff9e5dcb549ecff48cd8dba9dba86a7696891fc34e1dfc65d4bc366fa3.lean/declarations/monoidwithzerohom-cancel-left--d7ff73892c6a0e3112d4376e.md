# MonoidWithZeroHom.cancel_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9be4d4ce-b80a-b4af-3a5a-59630b5425f4",
  "kind": "theorem",
  "lexical_name": "MonoidWithZeroHom.cancel_left",
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
  "slug": "monoidwithzerohom-cancel-left--d7ff73892c6a0e3112d4376e",
  "source": {
    "blob": "52c49b8b81a338bc3faa867a4119e74986f0f8fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1226,
    "line": 1215,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7ff73892c6a0e3112d4376ea8f98802d3dc363212ce659289a2d1c41d279c15",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9be4d4ce-b80a-b4af-3a5a-59630b5425f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1215–1226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidWithZeroHom.cancel_left [MulZeroOneClass M] [MulZeroOneClass N] [MulZeroOneClass P]
  {g : N →*₀ P} {f₁ f₂ : M →*₀ N} (hg : Function.Injective g) :
  g.comp f₁ = g.comp f₂ ↔ f₁ = f₂ :=
  ⟨fun h =>
    MonoidWithZeroHom.ext fun x => hg <| by rw [← MonoidWithZeroHom.comp_apply, h,
    MonoidWithZeroHom.comp_apply], fun h => h ▸ rfl⟩
#align monoid_with_zero_hom.cancel_left MonoidWithZeroHom.cancel_left

set_option linter.deprecated false in
section

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant327e4bff9e5dcb549ecff48cd8dba9dba86a7696891fc34e1dfc65d4bc366fa3.lean#L1215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52c49b8b81a338bc3faa867a4119e74986f0f8fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
