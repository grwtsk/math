# submodule_pow_eq_zero_of_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:736ad661-6c4a-27ef-0657-c6eb4ed8351f",
  "kind": "theorem",
  "lexical_name": "submodule_pow_eq_zero_of_pow_eq_zero",
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
  "slug": "submodule-pow-eq-zero-of-pow-eq-zero--b008d0fefa9d8539a50c910e",
  "source": {
    "blob": "1ac1172e7365c95125145532db35efd3059e6de4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 349,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b008d0fefa9d8539a50c910edb5de40230f0fadc497e922562b51f51ac271f11",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:736ad661-6c4a-27ef-0657-c6eb4ed8351f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submodule_pow_eq_zero_of_pow_eq_zero {N : Submodule R M} {g : Module.End R N}
    {G : Module.End R M} (h : G.comp N.subtype = N.subtype.comp g) {k : ℕ} (hG : G ^ k = 0) :
    --Porting note: ugly `HPow.hPow` instead of `^` notation
    HPow.hPow g k = 0 := by
  ext m
  have hg : N.subtype.comp (g ^ k) m = 0 := by
    rw [← commute_pow_left_of_commute h, hG, zero_comp, zero_apply]
  simpa using hg
#align linear_map.submodule_pow_eq_zero_of_pow_eq_zero LinearMap.submodule_pow_eq_zero_of_pow_eq_zero

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd4aa0747a301f2d8b7ca5d54f515abf966da869eaaf28f4ddc6ff187575cb325.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ac1172e7365c95125145532db35efd3059e6de4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
