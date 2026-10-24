# gaussian_cross_im_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e30fc85-0114-78e6-2f62-6c015abf494f",
  "kind": "theorem",
  "lexical_name": "gaussian_cross_im_eq_one",
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
  "slug": "gaussian-cross-im-eq-one--034b10d8d0a5125a690d1060",
  "source": {
    "blob": "90c5ea4b167090d3046fc48d02055f00accbba2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 57,
    "path": "GRWTSK/NumberTheory/Farey/GaussianModularDirichletBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:034b10d8d0a5125a690d1060d774330791d503c589fc02c35256fae5852e5a69",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/GaussianModularDirichletBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e30fc85-0114-78e6-2f62-6c015abf494f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussian_cross_im_eq_one (I : Cell) :
    (leftGaussian I * conjugateRightGaussian I).im = 1 := by
  have hdet :
      (I.leftDen : ℤ) * (I.rightNum : ℤ) =
        (I.leftNum : ℤ) * (I.rightDen : ℤ) + 1 := by
    exact_mod_cast I.unimodular
  calc
    (leftGaussian I * conjugateRightGaussian I).im =
        (I.leftNum : ℤ) * (-(I.rightDen : ℤ)) +
          (I.leftDen : ℤ) * (I.rightNum : ℤ) := by
      simp [leftGaussian, conjugateRightGaussian]
    _ = (I.leftDen : ℤ) * (I.rightNum : ℤ) -
          (I.leftNum : ℤ) * (I.rightDen : ℤ) := by ring
    _ = 1 := by rw [hdet]; ring

/-- Reduction of the oriented Farey determinant modulo `q`.
There is no assumption that any individual numerator is a unit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/GaussianModularDirichletBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/GaussianModularDirichletBridge.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c5ea4b167090d3046fc48d02055f00accbba2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
