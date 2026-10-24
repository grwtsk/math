# sigmaFinite_tprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6ae95876e14153176ce86b1339bcf18363ea7741205b16fe721f46615de9b36",
  "kind": "instance",
  "lexical_name": "sigmaFinite_tprod",
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
  "slug": "sigmafinite-tprod--37568ec00720a063f7e15def",
  "source": {
    "blob": "9618025b8281bb3eb3fca9e41aa8b7c208793801",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 245,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37568ec00720a063f7e15def729e238d6b4a75afb2f35748372f16e3d960a0e5",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6ae95876e14153176ce86b1339bcf18363ea7741205b16fe721f46615de9b36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sigmaFinite_tprod (l : List δ) (μ : ∀ i, Measure (π i)) [∀ i, SigmaFinite (μ i)] :
    SigmaFinite (Measure.tprod l μ) := by
  induction l with
  | nil => rw [tprod_nil]; infer_instance
  | cons i l ih => rw [tprod_cons]; exact @prod.instSigmaFinite _ _ _ _ _ _ ih _
#align measure_theory.measure.sigma_finite_tprod MeasureTheory.Measure.sigmaFinite_tprod

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant78ac67f503647417327203bbe3eb48a6bcfdc752eb3494e3ad25de9bbc378424.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9618025b8281bb3eb3fca9e41aa8b7c208793801` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
