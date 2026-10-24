# evalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b4056cef9fb89f5fa0847cc6645d6fb9f8706c0c98deeb9d6e05c7f4b07e573",
  "kind": "def",
  "lexical_name": "evalRingHom",
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
  "slug": "evalringhom--30b0bcf0e7ae6962001f43fd",
  "source": {
    "blob": "30abc1a101585ed9c4a237ecb9ebd6572d38f632",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 279,
    "line": 263,
    "path": "GRWTSK/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30b0bcf0e7ae6962001f43fd51f1043836d22b52f57176d1a8abd6ec961990cb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b4056cef9fb89f5fa0847cc6645d6fb9f8706c0c98deeb9d6e05c7f4b07e573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–279.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalRingHom {R : Type*} [CommRing R] [TopologicalSpace R] [ChartedSpace H' R] [SmoothRing I' R]
    (n : N) : C^∞⟮I, N; I', R⟯ →+* R :=
  (Pi.evalRingHom _ n : (N → R) →+* R).comp SmoothMap.coeFnRingHom
#align smooth_map.eval_ring_hom SmoothMap.evalRingHom

end RingStructure

section ModuleStructure

/-!
### Semiodule stucture

In this section we show that smooth functions valued in a vector space `M` over a normed
field `𝕜` inherit a vector space structure.
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SmoothFunctions/Variant87cc5ea486d1981e65350f62bbcd727baa3beed54332a2d386cc16097ca3ec20.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30abc1a101585ed9c4a237ecb9ebd6572d38f632` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
