# IntegratedMangoldtWorkTailLowerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1df59c87f24bcd0928a0bd8ba5cccfdc3a75b1a7341568fbf5114179d17f452f",
  "kind": "def",
  "lexical_name": "IntegratedMangoldtWorkTailLowerBound",
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
  "slug": "integratedmangoldtworktaillowerbound--eba2ddfcaba71ecd30763c43",
  "source": {
    "blob": "1de5ae9fb2daf5f59ceaa5ce895a6c78ab41bcdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 253,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variantbe8348e9bc18bc928cf4708b97d34ae6cffd47426d1631e2303c8b707c82234a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eba2ddfcaba71ecd30763c43ed890054ea279e7b6105331a53e6399325021aa3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variantbe8348e9bc18bc928cf4708b97d34ae6cffd47426d1631e2303c8b707c82234a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1df59c87f24bcd0928a0bd8ba5cccfdc3a75b1a7341568fbf5114179d17f452f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IntegratedMangoldtWorkTailLowerBound : Prop :=
  ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 2 ≤ R ∧
    ∀ A : ℝ, R ≤ A → -B ≤ ∫ s in 2..A, mangoldtWorkScaleDerivative s

/-- A supplied integrated flux witness converts to the original work target, without creating one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variantbe8348e9bc18bc928cf4708b97d34ae6cffd47426d1631e2303c8b707c82234a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FluxTargetV1Prebytes/Variantbe8348e9bc18bc928cf4708b97d34ae6cffd47426d1631e2303c8b707c82234a.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1de5ae9fb2daf5f59ceaa5ce895a6c78ab41bcdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
