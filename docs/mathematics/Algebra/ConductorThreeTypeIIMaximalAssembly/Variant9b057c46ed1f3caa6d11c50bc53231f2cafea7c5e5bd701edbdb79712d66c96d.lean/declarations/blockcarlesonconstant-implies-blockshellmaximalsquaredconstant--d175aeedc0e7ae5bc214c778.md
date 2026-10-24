# blockCarlesonConstant_implies_blockShellMaximalSquaredConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aae0600a-56f4-f185-c9aa-73886a4d15ac",
  "kind": "theorem",
  "lexical_name": "blockCarlesonConstant_implies_blockShellMaximalSquaredConstant",
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
  "slug": "blockcarlesonconstant-implies-blockshellmaximalsquaredconstant--d175aeedc0e7ae5bc214c778",
  "source": {
    "blob": "cb8d4f4ad2e902d6419ac038bf159207e5674fbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 206,
    "path": "GRWTSK/Algebra/ConductorThreeTypeIIMaximalAssembly/Variant9b057c46ed1f3caa6d11c50bc53231f2cafea7c5e5bd701edbdb79712d66c96d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d175aeedc0e7ae5bc214c778c4df796151eea25ac1a5c7b1de8b4a0cfaf4caf2",
  "verification": {
    "reference": "docs/verification/Algebra/ConductorThreeTypeIIMaximalAssembly/Variant9b057c46ed1f3caa6d11c50bc53231f2cafea7c5e5bd701edbdb79712d66c96d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aae0600a-56f4-f185-c9aa-73886a4d15ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blockCarlesonConstant_implies_blockShellMaximalSquaredConstant
    {ε C : ℝ}
    (hC : IsConductorThreeBlockHyperbolicCarlesonConstant ε C) :
    IsConductorThreeBlockShellMaximalSquaredConstant ε C := by
  refine ⟨hC.1, ?_⟩
  intro N q hN B x hx
  calc
    ‖conductorThreeBlockShellPrefixCorrelation B x‖ ^ 2 ≤
        (q + 2 : ℝ) * conductorThreeBlockHyperbolicSquareMass B :=
      blockShellPrefixCorrelation_sq_le_shellCard_mul_squareMass B hx
    _ ≤ (q + 2 : ℝ) *
        (C * Real.rpow (N : ℝ) (2 * ε) *
          conductorThreeBlockLeftEnergy B *
          conductorThreeBlockRightEnergy B) := by
      exact mul_le_mul_of_nonneg_left (hC.2 N q hN B) (by positivity)
    _ = (q + 2 : ℝ) * C *
        Real.rpow (N : ℝ) (2 * ε) *
        conductorThreeBlockLeftEnergy B *
        conductorThreeBlockRightEnergy B := by ring

/-- The uninhabited block hyperbolic Carleson proposition formally implies
the route-free squared block-shell maximal predicate. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConductorThreeTypeIIMaximalAssembly/Variant9b057c46ed1f3caa6d11c50bc53231f2cafea7c5e5bd701edbdb79712d66c96d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConductorThreeTypeIIMaximalAssembly/Variant9b057c46ed1f3caa6d11c50bc53231f2cafea7c5e5bd701edbdb79712d66c96d.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb8d4f4ad2e902d6419ac038bf159207e5674fbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
