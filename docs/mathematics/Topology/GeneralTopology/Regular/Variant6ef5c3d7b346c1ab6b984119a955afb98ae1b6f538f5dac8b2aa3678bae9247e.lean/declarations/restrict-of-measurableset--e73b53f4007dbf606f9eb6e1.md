# restrict_of_measurableSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0db5ad26-7e0a-21f8-5473-30352ef96e6e",
  "kind": "theorem",
  "lexical_name": "restrict_of_measurableSet",
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
  "slug": "restrict-of-measurableset--e73b53f4007dbf606f9eb6e1",
  "source": {
    "blob": "1c1fb563dfba3d4dcf3211f8f280380297a69d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 635,
    "line": 621,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e73b53f4007dbf606f9eb6e13e869c163feafc9b26d9df158651c0d72a167186",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0db5ad26-7e0a-21f8-5473-30352ef96e6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–635.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_of_measurableSet [BorelSpace α] [WeaklyRegular μ] (A : Set α)
    (hA : MeasurableSet A) (h'A : μ A ≠ ∞) : WeaklyRegular (μ.restrict A) := by
  haveI : Fact (μ A < ∞) := ⟨h'A.lt_top⟩
  refine' InnerRegular.weaklyRegular_of_finite (μ.restrict A) fun V V_open => _
  simp only [restrict_apply' hA]
  intro r hr
  have : μ (V ∩ A) ≠ ∞ := ne_top_of_le_ne_top h'A (measure_mono <| inter_subset_right _ _)
  rcases(V_open.measurableSet.inter hA).exists_lt_isClosed_of_ne_top this hr with
    ⟨F, hFVA, hFc, hF⟩
  refine' ⟨F, hFVA.trans (inter_subset_left _ _), hFc, _⟩
  rwa [inter_eq_self_of_subset_left (hFVA.trans <| inter_subset_right _ _)]
#align measure_theory.measure.weakly_regular.restrict_of_measurable_set MeasureTheory.Measure.WeaklyRegular.restrict_of_measurableSet

-- see Note [lower instance priority]
/-- Any finite measure on a metric space (or even a pseudo emetric space) is weakly regular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1fb563dfba3d4dcf3211f8f280380297a69d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
