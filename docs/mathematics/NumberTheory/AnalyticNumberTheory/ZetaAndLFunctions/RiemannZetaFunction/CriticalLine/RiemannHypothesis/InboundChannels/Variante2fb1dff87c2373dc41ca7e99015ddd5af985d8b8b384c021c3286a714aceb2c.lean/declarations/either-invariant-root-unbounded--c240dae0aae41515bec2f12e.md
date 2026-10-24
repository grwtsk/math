# either_invariant_root_unbounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89d28683-9a67-24dc-aa61-82ee8ba0cd27",
  "kind": "theorem",
  "lexical_name": "either_invariant_root_unbounded",
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
  "slug": "either-invariant-root-unbounded--c240dae0aae41515bec2f12e",
  "source": {
    "blob": "1801fe7726ffb7a924b0a75b0a18241ddee1f4bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InboundChannels/Variante2fb1dff87c2373dc41ca7e99015ddd5af985d8b8b384c021c3286a714aceb2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c240dae0aae41515bec2f12e6be3f8d20995b64cb74de5185c5d1cadef8db947",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InboundChannels/Variante2fb1dff87c2373dc41ca7e99015ddd5af985d8b8b384c021c3286a714aceb2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89d28683-9a67-24dc-aa61-82ee8ba0cd27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem either_invariant_root_unbounded (B : ℝ) :
    ∃ m : Packet, (∀ i, orbitVariation m.2 i = 0) ∧ B < m.1 ∧ B < orbitMean m.2 := by
  refine ⟨(|B| + 1, fun _ ↦ |B| + 1), ?_, ?_, ?_⟩
  · intro i
    simp [orbitVariation, mean_of_constant]
  · exact lt_of_le_of_lt (le_abs_self B) (lt_add_one _)
  · simpa [mean_of_constant] using lt_of_le_of_lt (le_abs_self B) (lt_add_one _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InboundChannels/Variante2fb1dff87c2373dc41ca7e99015ddd5af985d8b8b384c021c3286a714aceb2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/InboundChannels/Variante2fb1dff87c2373dc41ca7e99015ddd5af985d8b8b384c021c3286a714aceb2c.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1801fe7726ffb7a924b0a75b0a18241ddee1f4bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
