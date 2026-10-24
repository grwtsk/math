# net_forcing_vanishes_of_separate_defects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:596ac468-88a4-1dc5-4460-0a0df9496716",
  "kind": "theorem",
  "lexical_name": "net_forcing_vanishes_of_separate_defects",
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
  "slug": "net-forcing-vanishes-of-separate-defects--13e1e4740524e3af63884dcd",
  "source": {
    "blob": "09e5c858dc3a237531d80e5b663d90449e53587f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 107,
    "path": "GRWTSK/Analysis/ErrorBounds/SourceResidualEvolution.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e1e4740524e3af63884dcd60cf2522d62e3eae204890c93cea585214183f11",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/SourceResidualEvolution.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:596ac468-88a4-1dc5-4460-0a0df9496716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem net_forcing_vanishes_of_separate_defects (weight : ι → ℝ)
    (gain : ℕ → ι → ι → ℝ) (source model : ℕ → ι → ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (sourceVanishes : VanishesAtInfinity
      (fun n => channelMass weight (stageDefect gain source n)))
    (modelVanishes : VanishesAtInfinity
      (fun n => channelMass weight (stageDefect gain model n))) :
    VanishesAtInfinity (fun n => channelMass weight (residualForcing gain source model n)) := by
  apply VanishesAtInfinity.of_nonnegative_bound
    (VanishesAtInfinity.add sourceVanishes modelVanishes)
  · intro n
    exact add_nonneg
      (channelMass_nonnegative weight (stageDefect gain source n) weightsNonnegative)
      (channelMass_nonnegative weight (stageDefect gain model n) weightsNonnegative)
  · intro n
    rw [abs_of_nonneg
      (channelMass_nonnegative weight (residualForcing gain source model n) weightsNonnegative)]
    exact channelMass_sub_le weight (stageDefect gain source n)
      (stageDefect gain model n) weightsNonnegative

/-- Matching the source injection leaves only the model's update error as net forcing.
Access to the source injection is a premise, not an arithmetic construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/SourceResidualEvolution.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/SourceResidualEvolution.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09e5c858dc3a237531d80e5b663d90449e53587f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
