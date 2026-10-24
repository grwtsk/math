# jointMangoldtTestProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcc070eac91fad41a52ca966a40311fcfb47d18a7df08d68e455028c53f7236a",
  "kind": "def",
  "lexical_name": "jointMangoldtTestProfile",
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
  "slug": "jointmangoldttestprofile--a49dd71e076fb825cd3d61d9",
  "source": {
    "blob": "4e895ec488fea53148d5de6a54bf538dee6b45bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variantd7d03374294db58a81252f22d4e0d9de6881624bffe98f3c3fdd3380ae535604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a49dd71e076fb825cd3d61d95c0108a511ba8131960ecd5b5e114290d0c9c969",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variantd7d03374294db58a81252f22d4e0d9de6881624bffe98f3c3fdd3380ae535604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcc070eac91fad41a52ca966a40311fcfb47d18a7df08d68e455028c53f7236a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def jointMangoldtTestProfile (A t : ℝ) : ℝ :=
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let K := N / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let F : ℕ → ℝ → ℝ := fun k s =>
    Real.exp (s / 2) / Real.sqrt (k : ℝ) *
      sourceCorrelation explicitSecondDerivative A (s + Real.log (k : ℝ))
  ∑ k ∈ Finset.Ico (U + 1) K, B k * (F k t - F (k + 1) t)

/-- The original Mangoldt error works against the derivative of that independently fixed test. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variantd7d03374294db58a81252f22d4e0d9de6881624bffe98f3c3fdd3380ae535604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/17SourceJointMangoldtWork/Variantd7d03374294db58a81252f22d4e0d9de6881624bffe98f3c3fdd3380ae535604.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e895ec488fea53148d5de6a54bf538dee6b45bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
