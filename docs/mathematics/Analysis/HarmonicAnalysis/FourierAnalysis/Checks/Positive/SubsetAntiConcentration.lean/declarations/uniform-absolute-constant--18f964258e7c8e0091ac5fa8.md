# uniform_absolute_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bd34b91-fd9c-6e6a-3e52-41576af08616",
  "kind": "theorem",
  "lexical_name": "uniform_absolute_constant",
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
  "slug": "uniform-absolute-constant--18f964258e7c8e0091ac5fa8",
  "source": {
    "blob": "ae1845d4b88144c36ed2dd5c9a079e3e9fe3a0ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 24,
    "path": "GRWTSK/Analysis/Fourier/Checks/Positive/SubsetAntiConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18f964258e7c8e0091ac5fa8e36203de6784c628be1515fd57c12e8b4a0bb973",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SubsetAntiConcentration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bd34b91-fd9c-6e6a-3e52-41576af08616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_absolute_constant :
    ∃ C : ℝ, 0 < C ∧ ∀ (p : ℕ) (hp : p.Prime),
      ∀ (S : Finset (ZMod p)) (m : ℕ), 2 ≤ S.card →
        C * Real.log S.card ≤ m →
        (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card →
        ∀ z : ZMod p,
          (@GRWTSK.ZModSubsetSum.subsetSumProbability p ⟨hp.ne_zero⟩ S m z : ℝ) ≤
          1 / p + C / ((S.card : ℝ) * Real.sqrt m) :=
  GRWTSK.ZModBalancedExpectedLayers.exists_anticoncentration_constant

end GRWTSK.SubsetAntiConcentrationChecks
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SubsetAntiConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/Checks/Positive/SubsetAntiConcentration.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae1845d4b88144c36ed2dd5c9a079e3e9fe3a0ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
