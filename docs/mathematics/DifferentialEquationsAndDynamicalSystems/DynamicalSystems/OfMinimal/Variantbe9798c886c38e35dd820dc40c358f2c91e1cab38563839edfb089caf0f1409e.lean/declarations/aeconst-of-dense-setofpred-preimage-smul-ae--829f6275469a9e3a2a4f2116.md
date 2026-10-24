# aeconst_of_dense_setOfPred_preimage_smul_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce6281e6-bb99-7aa5-71df-1f9e7cf08a38",
  "kind": "theorem",
  "lexical_name": "aeconst_of_dense_setOfPred_preimage_smul_ae",
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
  "slug": "aeconst-of-dense-setofpred-preimage-smul-ae--829f6275469a9e3a2a4f2116",
  "source": {
    "blob": "8dc0b06a264037b5155248735c8fdc0ef16baaec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 63,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantbe9798c886c38e35dd820dc40c358f2c91e1cab38563839edfb089caf0f1409e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:829f6275469a9e3a2a4f2116e4825a5219aad6496308b5f085dab4ef3f0e2206",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantbe9798c886c38e35dd820dc40c358f2c91e1cab38563839edfb089caf0f1409e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce6281e6-bb99-7aa5-71df-1f9e7cf08a38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeconst_of_dense_setOfPred_preimage_smul_ae (hsm : NullMeasurableSet s μ)
    (hd : Dense {g : M | (g • ·) ⁻¹' s =ᵐ[μ] s}) : EventuallyEmptyOrUniv s (ae μ) := by
  borelize M
  refine aeconst_of_forall_preimage_smul_ae_eq M hsm ?_
  rwa [dense_iff_closure_eq, IsClosed.closure_eq, eq_univ_iff_forall] at hd
  let f : C(M × X, X) := ⟨(· • ·).uncurry, continuous_smul⟩
  exact isClosed_setOfPred_preimage_ae_eq f.curry.continuous (measurePreserving_smul · μ) _ hsm
    (measure_ne_top _ _)

@[deprecated (since := "2026-07-09")]
alias aeconst_of_dense_setOf_preimage_smul_ae := aeconst_of_dense_setOfPred_preimage_smul_ae

@[deprecated (since := "2026-07-09")]
alias aeconst_of_dense_setOf_preimage_vadd_ae := aeconst_of_dense_setOfPred_preimage_vadd_ae

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantbe9798c886c38e35dd820dc40c358f2c91e1cab38563839edfb089caf0f1409e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/OfMinimal/Variantbe9798c886c38e35dd820dc40c358f2c91e1cab38563839edfb089caf0f1409e.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc0b06a264037b5155248735c8fdc0ef16baaec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
