# instLieModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e24650cb1a6bb89c31da104a0258ee7bbdf61f0c46d7100519c6825a440201b",
  "kind": "instance",
  "lexical_name": "instLieModule",
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
  "slug": "instliemodule--5495c456ded383c3f3d11863",
  "source": {
    "blob": "b3a3170909b0230d3862a38565d79aab28062799",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant605b9856e7b5289a3541dfd1f3fc3580f894da1bd9768dd409fd2932d1e5e045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5495c456ded383c3f3d11863f474b86ba616a5549c20ef37d3aa448c5d6d630d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variant605b9856e7b5289a3541dfd1f3fc3580f894da1bd9768dd409fd2932d1e5e045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e24650cb1a6bb89c31da104a0258ee7bbdf61f0c46d7100519c6825a440201b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLieModule : LieModule A (A ⊗[R] L) (A ⊗[R] M) where
  smul_lie t x m := by simp only [bracket_def, map_smul, LinearMap.smul_apply]
  lie_smul _ _ _ := map_smul _ _ _

/-- The Lie algebra homomorphism induced by an algebra map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variant605b9856e7b5289a3541dfd1f3fc3580f894da1bd9768dd409fd2932d1e5e045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant605b9856e7b5289a3541dfd1f3fc3580f894da1bd9768dd409fd2932d1e5e045.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a3170909b0230d3862a38565d79aab28062799` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
