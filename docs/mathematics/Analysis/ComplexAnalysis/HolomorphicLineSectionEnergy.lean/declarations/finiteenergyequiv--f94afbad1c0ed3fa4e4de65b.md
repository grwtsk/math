# finiteEnergyEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86d69ff2b2f38c67f0b42517e566f2cf82bf865e3c6dfc78b7b5dc78cc2cfeec",
  "kind": "def",
  "lexical_name": "finiteEnergyEquiv",
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
  "slug": "finiteenergyequiv--f94afbad1c0ed3fa4e4de65b",
  "source": {
    "blob": "4e0a5294e4dfa0cec63efff7560e73f766cf0b04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 122,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineSectionEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f94afbad1c0ed3fa4e4de65b79a5ad533fc0fd9c6859a9b5406d06b8cb1603c3",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineSectionEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86d69ff2b2f38c67f0b42517e566f2cf82bf865e3c6dfc78b7b5dc78cc2cfeec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteEnergyEquiv (G : Gauge C E) (M : MetricWeights C) (μ : Measure D.X.carrier)
    (hOpen : D.IsOpenCover) :
    FiniteEnergySection M μ hOpen ≃ FiniteEnergySection (transportMetric G M) μ hOpen where
  toFun s := ⟨G.bundleSectionEquiv hOpen s.1, by
    rw [energy_gauge]
    exact s.2⟩
  invFun t := ⟨(G.bundleSectionEquiv hOpen).symm t.1, by
    have h := energy_gauge G M μ hOpen ((G.bundleSectionEquiv hOpen).symm t.1)
    rw [(G.bundleSectionEquiv hOpen).apply_symm_apply] at h
    rw [← h]
    exact t.2⟩
  left_inv s := Subtype.ext ((G.bundleSectionEquiv hOpen).symm_apply_apply s.1)
  right_inv t := Subtype.ext ((G.bundleSectionEquiv hOpen).apply_symm_apply t.1)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineSectionEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineSectionEnergy.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e0a5294e4dfa0cec63efff7560e73f766cf0b04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
