# reflective_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9d12704-ea91-e7ea-8c0e-0adc7e808bdb",
  "kind": "lemma",
  "lexical_name": "reflective_reflection",
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
  "slug": "reflective-reflection--95e9c2342eee7ff9eea4f73c",
  "source": {
    "blob": "77020f3a33e005226c8eb584cbf51e54fdb0136e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variantf090087e1eed9a94f2319075cfa2f5b04d99f1d873429835375998a820a97e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95e9c2342eee7ff9eea4f73c5691c680c30adb376d6526c7cd45f2f647ab6b62",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBilinear/Variantf090087e1eed9a94f2319075cfa2f5b04d99f1d873429835375998a820a97e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9d12704-ea91-e7ea-8c0e-0adc7e808bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflective_reflection (hSB : LinearMap.IsSymm B) {y : M}
    (hx : IsReflective B x) (hy : IsReflective B y) :
    IsReflective B (Module.reflection (coroot_apply_self B hx) y) := by
  constructor
  · rw [isOrthogonal_reflection B hx hSB]
    exact hy.1
  · intro z
    have hz : Module.reflection (coroot_apply_self B hx)
        (Module.reflection (coroot_apply_self B hx) z) = z := by
      exact (LinearEquiv.eq_symm_apply (Module.reflection (coroot_apply_self B hx))).mp rfl
    rw [← hz, isOrthogonal_reflection B hx hSB,
      isOrthogonal_reflection B hx hSB]
    exact hy.2 _

end IsReflective

end LinearMap

namespace RootPairing

open LinearMap IsReflective

/-- The root pairing given by all reflective vectors for a bilinear form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBilinear/Variantf090087e1eed9a94f2319075cfa2f5b04d99f1d873429835375998a820a97e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variantf090087e1eed9a94f2319075cfa2f5b04d99f1d873429835375998a820a97e29.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77020f3a33e005226c8eb584cbf51e54fdb0136e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
