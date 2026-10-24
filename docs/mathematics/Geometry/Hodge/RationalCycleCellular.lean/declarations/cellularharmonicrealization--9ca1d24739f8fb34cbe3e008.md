# CellularHarmonicRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a434f8bae8e9105670517c29f0659faf733e89606ee8262207cc4e3e8b9d4e14",
  "kind": "structure",
  "lexical_name": "CellularHarmonicRealization",
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
  "slug": "cellularharmonicrealization--9ca1d24739f8fb34cbe3e008",
  "source": {
    "blob": "02308219aad0658167bb756fd418a815bb7e261d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 131,
    "path": "GRWTSK/Geometry/Hodge/RationalCycleCellular.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ca1d24739f8fb34cbe3e008f30215cc5ff7f8fee1e91e0d65371a9f7913f571",
  "verification": {
    "reference": "docs/verification/Geometry/Hodge/RationalCycleCellular.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a434f8bae8e9105670517c29f0659faf733e89606ee8262207cc4e3e8b9d4e14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CellularHarmonicRealization
    (CellClass : Type w) [AddCommGroup CellClass] [Module ℚ CellClass]
    (C₀ : Type x) (C₁ : Type y)
    [AddCommGroup C₀] [Module ℚ C₀]
    [AddCommGroup C₁] [Module ℚ C₁]
    (A : RationalTwoTermHodgeData C₀ C₁) where
  representative : CellClass →ₗ[ℚ] C₀
  harmonic : ∀ c, A.IsHarmonic0 (representative c)

/-- The complete proof-carrying adapter from rational Hodge surjectivity through a
cellular comparison to a selected harmonic representative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Hodge/RationalCycleCellular.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Hodge/RationalCycleCellular.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02308219aad0658167bb756fd418a815bb7e261d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
