# kahler_comp_linearIsometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c50e755a-10e6-e25a-f0f9-e69cc27e615b",
  "kind": "theorem",
  "lexical_name": "kahler_comp_linearIsometryEquiv",
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
  "slug": "kahler-comp-linearisometryequiv--f28ee2c73a4dbb6ca54c12b8",
  "source": {
    "blob": "a31c3f87e7716c7cadccdd2c48dfb8d1c0174a61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 513,
    "path": "GRWTSK/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f28ee2c73a4dbb6ca54c12b805177d67b298d3ae9e5d87f80dc83f300d2c7d9d",
  "verification": {
    "reference": "docs/verification/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c50e755a-10e6-e25a-f0f9-e69cc27e615b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kahler_comp_linearIsometryEquiv (φ : E ≃ₗᵢ[ℝ] E)
    (hφ : 0 < LinearMap.det (φ.toLinearEquiv : E →ₗ[ℝ] E)) (x y : E) :
    o.kahler (φ x) (φ y) = o.kahler x y := by
  simp [kahler_apply_apply, o.areaForm_comp_linearIsometryEquiv φ hφ]

end Orientation

namespace Complex

attribute [local instance] Complex.finrank_real_complex_fact

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TwoDim/Variant217732c589001a963c515ad627aa49208a59b5947151514e5dcafa12e511f07b.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a31c3f87e7716c7cadccdd2c48dfb8d1c0174a61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
