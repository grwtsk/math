# Equation17GrowthCheckpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e08861aab6d70384434912136e053ad4a6dd21a2a619c8b8fa7dc2777b7c187a",
  "kind": "def",
  "lexical_name": "Equation17GrowthCheckpoint",
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
  "slug": "equation17growthcheckpoint--c71b3ebaf5866f5d6a5f8993",
  "source": {
    "blob": "7bae80e1176fa7da5398efa908fef8f55cb2f546",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 568,
    "path": "GRWTSK/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c71b3ebaf5866f5d6a5f89937d66b4f3a16b3fc9e3b85accde9b8520917d0231",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e08861aab6d70384434912136e053ad4a6dd21a2a619c8b8fa7dc2777b7c187a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 568–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Equation17GrowthCheckpoint : Prop :=
  (∀ A : ℝ, 1 ≤ A →
    Summable
      (fun o : ZeroOccurrence ↦
        expandedSummand A (shiftedValue o)) ∧
    (weightedSource A : ℂ) =
      ∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o)) ∧
  (∀ B : ℝ, 1 ≤ B →
    HasSumUniformlyOn
      (fun o : ZeroOccurrence ↦
        fun A : ℝ ↦ expandedSummand A (shiftedValue o))
      (fun A ↦ ∑' o : ZeroOccurrence,
        expandedSummand A (shiftedValue o))
      (Icc (1 : ℝ) B)) ∧
  (∀ B : ℝ, 1 ≤ B →
    ContinuousOn
      (fun A : ℝ ↦ (weightedSource A : ℂ))
      (Icc (1 : ℝ) B)) ∧
  (∀ A : ℝ, ((weightedSource A : ℂ)).im = 0) ∧
  (0 ≤ growthConstant ∧
    ∀ A : ℝ, 1 ≤ A →
      ‖(weightedSource A : ℂ)‖ ≤
        growthConstant * (1 + A ^ 8) * Real.exp A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Expansion/Variant5e87766a4589aeb952b113b8370d1bad602a89dca64ad694fd9f69ee930dfec5.lean#L568).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bae80e1176fa7da5398efa908fef8f55cb2f546` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
