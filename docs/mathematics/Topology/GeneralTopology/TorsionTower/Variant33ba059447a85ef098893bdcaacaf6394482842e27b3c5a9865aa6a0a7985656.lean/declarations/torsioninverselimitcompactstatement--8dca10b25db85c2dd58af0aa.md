# TorsionInverseLimitCompactStatement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c73144a07fec544562cf99d6787d632a17f1ad5d4d92734869d92f52bbe9818",
  "kind": "def",
  "lexical_name": "TorsionInverseLimitCompactStatement",
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
  "slug": "torsioninverselimitcompactstatement--8dca10b25db85c2dd58af0aa",
  "source": {
    "blob": "ad1e74c982b07e6ea5d9a222882b60c11e3a4f3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 134,
    "path": "GRWTSK/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dca10b25db85c2dd58af0aa60a10854fb3e38ffce2572f50749f13e59099c1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c73144a07fec544562cf99d6787d632a17f1ad5d4d92734869d92f52bbe9818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TorsionInverseLimitCompactStatement : Prop :=
  ∀ (prime : CertifiedPrime)
    (Level : Nat → Type)
    [∀ level, AddCommGroup (Level level)]
    [∀ level, Fintype (Level level)]
    [∀ level, TopologicalSpace (Level level)]
    [∀ level, DiscreteTopology (Level level)]
    (tower : PrimePowerTorsionTower prime Level),
      IsCompact
        (Set.univ :
          Set (tower.TopologicalInverseLimit))

/-- Immutable proposal seed for the profinite torsion-loop topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1e74c982b07e6ea5d9a222882b60c11e3a4f3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
