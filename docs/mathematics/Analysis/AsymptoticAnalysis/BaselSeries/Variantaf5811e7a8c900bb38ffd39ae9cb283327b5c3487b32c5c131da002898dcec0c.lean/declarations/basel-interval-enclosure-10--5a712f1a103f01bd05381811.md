# basel_interval_enclosure_10

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ed31dec-f6f4-ad80-8f57-d894f96c8b0b",
  "kind": "theorem",
  "lexical_name": "basel_interval_enclosure_10",
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
  "slug": "basel-interval-enclosure-10--5a712f1a103f01bd05381811",
  "source": {
    "blob": "2d4c888500af9ef2101af3751c7512f23c01ea58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 186,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a712f1a103f01bd05381811681db9a4f186dc7aac2e928fc5947ec7c7935856",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ed31dec-f6f4-ad80-8f57-d894f96c8b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basel_interval_enclosure_10 :
    ((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 ∧
      Real.pi ^ 2 / 6 ≤
        ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10 :=
  ⟨basel_tsum_lower_bound_10,
    basel_tsum_upper_bound_10⟩

/-! ## Finite numerical payload (metadata only)

`lower = baselPartialSum 10 = 1968329 / 1270080` and
`upper = baselPartialSum 10 + 1 / 10 = 2095337 / 1270080`. The payload is
finite metadata; the analytic enclosure is `basel_interval_enclosure_10`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BaselSeries/Variantaf5811e7a8c900bb38ffd39ae9cb283327b5c3487b32c5c131da002898dcec0c.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d4c888500af9ef2101af3751c7512f23c01ea58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
