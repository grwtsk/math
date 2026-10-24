# deficit_summable_of_gaussian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7547c6c-8ea6-1545-7be3-44c2dd0104fc",
  "kind": "theorem",
  "lexical_name": "deficit_summable_of_gaussian",
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
  "slug": "deficit-summable-of-gaussian--8b1c6be4c92b236c2135cfbb",
  "source": {
    "blob": "c08aec2d2f82925ed335e6c9f14bad4a6aff4c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 112,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b1c6be4c92b236c2135cfbba7178c40e50acf86bf94b75ab19d03fa7906bd92",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7547c6c-8ea6-1545-7be3-44c2dd0104fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deficit_summable_of_gaussian {t : ℝ} (ht : 0 ≤ t)
    (m : ι → ℕ) (delta gamma : ι → ℝ)
    (hdelta : ∀ i, |delta i| ≤ 1 / 2)
    (hmass : Summable (fun i => gaussianTerm t (m i) (gamma i))) :
    Summable (fun i => deficitTerm t (m i) (delta i) (gamma i)) := by
  exact Summable.of_nonneg_of_le
    (fun i => deficitTerm_nonneg ht (m i) (delta i) (gamma i))
    (fun i => deficitTerm_le_quarter_gaussian ht (m i) (gamma i) (hdelta i))
    (hmass.mul_left (t / 4))

/-- A summable deficit smaller than the threshold excludes the entire closed region. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08aec2d2f82925ed335e6c9f14bad4a6aff4c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
