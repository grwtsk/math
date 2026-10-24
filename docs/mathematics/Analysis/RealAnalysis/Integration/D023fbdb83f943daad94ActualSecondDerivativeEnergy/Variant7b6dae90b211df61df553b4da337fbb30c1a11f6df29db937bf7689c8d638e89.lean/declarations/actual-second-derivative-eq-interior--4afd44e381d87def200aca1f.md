# actual_second_derivative_eq_interior

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c198d361-1baf-47d8-efd0-1b7faa1c415f",
  "kind": "theorem",
  "lexical_name": "actual_second_derivative_eq_interior",
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
  "slug": "actual-second-derivative-eq-interior--4afd44e381d87def200aca1f",
  "source": {
    "blob": "2d1c485f0abee5c41f7d28c6fc97ce4f18227559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D023fbdb83f943daad94ActualSecondDerivativeEnergy/Variant7b6dae90b211df61df553b4da337fbb30c1a11f6df29db937bf7689c8d638e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4afd44e381d87def200aca1fb7bd66c0ba801c7f0a9a8d439ba27de38c4301c1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D023fbdb83f943daad94ActualSecondDerivativeEnergy/Variant7b6dae90b211df61df553b4da337fbb30c1a11f6df29db937bf7689c8d638e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c198d361-1baf-47d8-efd0-1b7faa1c415f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_derivative_eq_interior (A x : ℝ) (hA : 0 < A)
    (hx : x ∈ Ioo (-A) A) :
    deriv (deriv (normalizedTest explicitSecondDerivative A)) x =
      normalizedInteriorSecond A x := by
  have he : EqOn (deriv (normalizedTest explicitSecondDerivative A))
      (normalizedInteriorDerivative A) (Ioo (-A) A) := by
    intro y hy
    rw [actual_first_derivative_eq_indicator A hA,
      indicator_of_mem (Ioo_subset_Icc_self hy)]
  rw [he.deriv isOpen_Ioo hx, (normalizedInteriorDerivative_hasDerivAt_second A x).deriv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D023fbdb83f943daad94ActualSecondDerivativeEnergy/Variant7b6dae90b211df61df553b4da337fbb30c1a11f6df29db937bf7689c8d638e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D023fbdb83f943daad94ActualSecondDerivativeEnergy/Variant7b6dae90b211df61df553b4da337fbb30c1a11f6df29db937bf7689c8d638e89.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1c485f0abee5c41f7d28c6fc97ce4f18227559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
