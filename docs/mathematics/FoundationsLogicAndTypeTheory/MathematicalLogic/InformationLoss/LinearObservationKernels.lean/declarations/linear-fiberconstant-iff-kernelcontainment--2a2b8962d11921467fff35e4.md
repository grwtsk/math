# linear_fiberConstant_iff_kernelContainment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89151c35-a82c-7e91-7260-feec02eaaa9a",
  "kind": "theorem",
  "lexical_name": "linear_fiberConstant_iff_kernelContainment",
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
  "slug": "linear-fiberconstant-iff-kernelcontainment--2a2b8962d11921467fff35e4",
  "source": {
    "blob": "89ccada5df2c052fbc97522159eabfa4ce2aae7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/Logic/InformationLoss/LinearObservationKernels.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a2b8962d11921467fff35e4467bc3a9dd641914fea551dfbd2d9242d232e38e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89151c35-a82c-7e91-7260-feec02eaaa9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_fiberConstant_iff_kernelContainment
    (P : V →ₗ[K] Y) (R : V →ₗ[K] Z) :
    (∀ x y : V, P x = P y → R x = R y) ↔
      (∀ h : V, P h = 0 → R h = 0) := by
  constructor
  · intro hc h hp
    have hh := hc h 0
    simpa using hh (by simpa using hp)
  · intro hk x y hp
    have hzero : P (x - y) = 0 := by
      rw [map_sub, sub_eq_zero]
      exact hp
    have hread : R (x - y) = 0 := hk (x - y) hzero
    rw [map_sub, sub_eq_zero] at hread
    exact hread

/-- Exact criterion for reconstructing a linear readout from the paired
measurement on its actual observable image. The decoder obtained from the
generic theorem is merely a function, NOT a certified linear or continuous
map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/InformationLoss/LinearObservationKernels.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ccada5df2c052fbc97522159eabfa4ce2aae7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
