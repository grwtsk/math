# shellGrowth_integer_endpoint_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e437441-e2a5-1e10-dbc5-6b45a247f44a",
  "kind": "lemma",
  "lexical_name": "shellGrowth_integer_endpoint_bound",
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
  "slug": "shellgrowth-integer-endpoint-bound--ba45d3924f3ec4ca6ede3a97",
  "source": {
    "blob": "a8ea3e9de514bbfc0fd671212f299403d3462f9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba45d3924f3ec4ca6ede3a97be461975cf74cd17b475ee122fdbc4b40d0f7e79",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e437441-e2a5-1e10-dbc5-6b45a247f44a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shellGrowth_integer_endpoint_bound (s : ℂ) (m : ℕ)
    (ha : 1 - (2 * m : ℝ) ≤ s.re) (hb : s.re ≤ (2 * m : ℝ)) :
    ‖completedRiemannZeta₀ s‖ ≤ 2 * (completedRiemannZeta₀ (2 * m)).re := by
  have ht := shellGrowth_strip_bound s (1 - 2 * m) (2 * m) ha hb
  push_cast at ht
  rw [completedRiemannZeta₀_one_sub] at ht
  linarith

#print axioms shellGrowth_integer_endpoint_bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositivity/Variant1aee01e14e3fd2b366b2fbe21641e121454e84abd4bcbdd72697d9f93e29657d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8ea3e9de514bbfc0fd671212f299403d3462f9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
