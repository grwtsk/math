# GlobalCrossNeckBudget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7563bfec01da43194660cf32b0f4d71e9992568cf2b960fba549a94d77254858",
  "kind": "def",
  "lexical_name": "GlobalCrossNeckBudget",
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
  "slug": "globalcrossneckbudget--7c3368a531c9922ba84cd017",
  "source": {
    "blob": "5d40b5f56f814f9f0b8f0a6f40c8f0a1ef6745b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 893,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantecedad8ff5d9650140b7c3963197cbebbfac2756e18c1dc43f13aa97dd50e221.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c3368a531c9922ba84cd017107e3ec52015fe79c5f3b75d5ab448559099ef96",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantecedad8ff5d9650140b7c3963197cbebbfac2756e18c1dc43f13aa97dd50e221.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7563bfec01da43194660cf32b0f4d71e9992568cf2b960fba549a94d77254858`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 893–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GlobalCrossNeckBudget
    (data : ConductorThreeDeltaRicciSurgeryData) : Prop :=
  ∀ ε : ℝ, 0 < ε → ∃ C : ℝ, 0 ≤ C ∧
    ∀ (N : ℕ) (hN : 2 ≤ N)
      (parent : TypeIIBilinearSurgeryState (data.scaleData N hN))
      (certificate : BlockEventCertificate parent),
      data.nextEvent N hN parent = TypeIIEvent.surgery certificate →
      ∀ x : ℕ, x ≤ 2 * N →
        ‖bipartiteMatrixPairing parent.leftCoefficient
            (certificate.surgery.crossMatrix x) parent.rightCoefficient‖ ≤
          C * (N : ℝ) ^ (1 / 2 + ε)

/-- Legacy quantitative balanced-cut target.  Exact coefficient-mass packing
now follows unconditionally from
`TypeIIBlockSurgery.child_mass_sum_le_parent_mass`; a contraction factor is a
stronger optional condition rather than part of the canonical program. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantecedad8ff5d9650140b7c3963197cbebbfac2756e18c1dc43f13aa97dd50e221.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variantecedad8ff5d9650140b7c3963197cbebbfac2756e18c1dc43f13aa97dd50e221.lean#L893).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d40b5f56f814f9f0b8f0a6f40c8f0a1ef6745b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
