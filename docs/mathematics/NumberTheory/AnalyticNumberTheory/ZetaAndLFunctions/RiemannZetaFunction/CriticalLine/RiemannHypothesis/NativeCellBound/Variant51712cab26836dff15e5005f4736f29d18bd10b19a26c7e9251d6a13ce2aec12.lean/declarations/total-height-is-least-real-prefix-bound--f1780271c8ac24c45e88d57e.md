# total_height_is_least_real_prefix_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:add38602-8b26-1da7-9d0e-47003331a739",
  "kind": "theorem",
  "lexical_name": "total_height_is_least_real_prefix_bound",
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
  "slug": "total-height-is-least-real-prefix-bound--f1780271c8ac24c45e88d57e",
  "source": {
    "blob": "04217bf07f5b768ad04c28a86429db1c6add4ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCellBound/Variant51712cab26836dff15e5005f4736f29d18bd10b19a26c7e9251d6a13ce2aec12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1780271c8ac24c45e88d57efffea03ce86d475c7672127d4f05b9b758a7cf39",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCellBound/Variant51712cab26836dff15e5005f4736f29d18bd10b19a26c7e9251d6a13ce2aec12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:add38602-8b26-1da7-9d0e-47003331a739`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem total_height_is_least_real_prefix_bound {N : ℕ} {E : ℝ} (hE : 0 ≤ E)
    (hsum : Summable (primeRecordIncrement N))
    (hreal : ∀ x : ℝ, (N : ℝ) ≤ x →
      ordinaryPrimePrimitive x - ordinaryPrimePrimitive N ≤ E) :
    (∑' j, primeRecordIncrement N j) ≤ E := by
  apply total_record_height_is_least_bound hsum
  apply RecordEndpoint.level_le_of_all_prefixes hE
  intro K
  exact hreal (N + K : ℕ) (by exact_mod_cast Nat.le_add_right N K)

end
end GRWTSK.RiemannHypothesis.Conversation.NativeCellBound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCellBound/Variant51712cab26836dff15e5005f4736f29d18bd10b19a26c7e9251d6a13ce2aec12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCellBound/Variant51712cab26836dff15e5005f4736f29d18bd10b19a26c7e9251d6a13ce2aec12.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04217bf07f5b768ad04c28a86429db1c6add4ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
