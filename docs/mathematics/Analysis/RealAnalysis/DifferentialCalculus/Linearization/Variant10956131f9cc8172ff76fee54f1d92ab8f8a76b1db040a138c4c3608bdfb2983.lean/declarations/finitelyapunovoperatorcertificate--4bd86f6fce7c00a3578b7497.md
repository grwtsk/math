# FiniteLyapunovOperatorCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:443cb6092778a62602180359874e68522be9384b1da2ab908f871b5a31d26302",
  "kind": "structure",
  "lexical_name": "FiniteLyapunovOperatorCertificate",
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
  "slug": "finitelyapunovoperatorcertificate--4bd86f6fce7c00a3578b7497",
  "source": {
    "blob": "61cc3d3f8916e29d6173fca90db444e01da21d20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bd86f6fce7c00a3578b749738b057fe8a3ae1bc2553b957265068793a6ee0ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:443cb6092778a62602180359874e68522be9384b1da2ab908f871b5a31d26302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteLyapunovOperatorCertificate
    (HilbertState : Type u)
    [NormedAddCommGroup HilbertState]
    [InnerProductSpace ℂ HilbertState]
    [FiniteDimensional ℂ HilbertState] where
  derivative :
    HilbertState →L[ℂ] HilbertState
  energyOperator :
    HilbertState →L[ℂ] HilbertState
  energyOperator_selfAdjoint :
    ∀ left right,
      inner ℂ (energyOperator left) right =
        inner ℂ left (energyOperator right)
  coerciveConstant : ℝ
  coerciveConstant_positive : 0 < coerciveConstant
  energy_coercive :
    ∀ state,
      coerciveConstant * ‖state‖ ^ 2 ≤
        (inner ℂ state (energyOperator state)).re
  decrease : ℝ
  decrease_positive : 0 < decrease
  operator_decreases_energy :
    ∀ state,
      (inner ℂ (derivative state)
          (energyOperator (derivative state))).re ≤
        (inner ℂ state (energyOperator state)).re -
          decrease * ‖state‖ ^ 2
  coordinateCertificate : ObjectAddress

namespace FiniteLyapunovOperatorCertificate

/-- Rearranged exact energy decrease, useful to downstream stability proofs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant10956131f9cc8172ff76fee54f1d92ab8f8a76b1db040a138c4c3608bdfb2983.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61cc3d3f8916e29d6173fca90db444e01da21d20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
