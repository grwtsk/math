# reflective_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ec648aa-90a4-e473-5b0c-9092683ea288",
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
  "slug": "reflective-reflection--35c62f4c63d17460763f086b",
  "source": {
    "blob": "738a420d1578e7066352aa0fc9ad449ef69f171e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35c62f4c63d17460763f086bd4e914a732ea5398f46c1a621619690564b71766",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ec648aa-90a4-e473-5b0c-9092683ea288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–119.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OfBilinear/Variant8e5c49c0a5b60f47dffbd59533474a4112c83c0e43496f5427aef779e28a8b57.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `738a420d1578e7066352aa0fc9ad449ef69f171e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
