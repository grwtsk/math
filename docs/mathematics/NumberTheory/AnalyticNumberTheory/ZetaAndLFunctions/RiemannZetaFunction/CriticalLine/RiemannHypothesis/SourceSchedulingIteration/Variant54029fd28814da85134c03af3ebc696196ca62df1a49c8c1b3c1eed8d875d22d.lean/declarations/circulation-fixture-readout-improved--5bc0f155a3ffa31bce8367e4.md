# circulation_fixture_readout_improved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9935b155-e91c-c0d7-2c7a-e4b4849efc88",
  "kind": "theorem",
  "lexical_name": "circulation_fixture_readout_improved",
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
  "slug": "circulation-fixture-readout-improved--5bc0f155a3ffa31bce8367e4",
  "source": {
    "blob": "cd4297f5c1e92ed890230f0dff30349d3e51976e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 172,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingIteration/Variant54029fd28814da85134c03af3ebc696196ca62df1a49c8c1b3c1eed8d875d22d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bc0f155a3ffa31bce8367e4a64e7bfda0bf52559c4a8464cfdf157615a3923d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingIteration/Variant54029fd28814da85134c03af3ebc696196ca62df1a49c8c1b3c1eed8d875d22d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9935b155-e91c-c0d7-2c7a-e4b4849efc88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circulation_fixture_readout_improved (f g : ℝ → ℝ) (L : ℝ)
    (_hL : 0 ≤ L)
    (ht : ∀ i j : Fin 2,
      |f (fixtureCoordinate i) - f (fixtureCoordinate j) -
        (fixtureCoordinate i - fixtureCoordinate j) * g (fixtureCoordinate j)| ≤
        L * (fixtureCoordinate i - fixtureCoordinate j) ^ 2 / 2)
    (hg : ∀ j k : Fin 2, |g (fixtureCoordinate j) - g (fixtureCoordinate k)| ≤
      L * |fixtureCoordinate j - fixtureCoordinate k|) :
    |readout fixtureCoordinate fixtureMass fixtureDerivative f g| ≤
      L * (transportCost fixtureCoordinate fixtureP (fixtureQ 0) - 4) := by
  have hP : ∀ i j : Fin 2, 0 ≤ fixtureP i j := by
    intro i j
    fin_cases i <;> fin_cases j <;> norm_num [fixtureP]
  have hQ : ∀ i j : Fin 2, 0 ≤ fixtureQ 1 i j := by
    intro i j
    fin_cases i <;> fin_cases j <;> norm_num [fixtureQ]
  have hfinal := two_stage_abs_le fixtureCoordinate fixtureMass fixtureDerivative
    f g fixtureP (fixtureQ 1) L hP hQ
    (circulation_fixture_reconstruction 1).1 (circulation_fixture_reconstruction 1).2 ht hg
  simpa only [circulation_fixture_gain] using hfinal

end CirculationFixture

end FormalResearch.RiemannHypothesis.SourceSchedulingIteration
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingIteration/Variant54029fd28814da85134c03af3ebc696196ca62df1a49c8c1b3c1eed8d875d22d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingIteration/Variant54029fd28814da85134c03af3ebc696196ca62df1a49c8c1b3c1eed8d875d22d.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd4297f5c1e92ed890230f0dff30349d3e51976e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
