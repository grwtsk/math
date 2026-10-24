# hinge_second_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb145256-e46c-10e9-c931-d4476313b3b5",
  "kind": "theorem",
  "lexical_name": "hinge_second_difference",
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
  "slug": "hinge-second-difference--8c9b62be13535cfa2d5b2a48",
  "source": {
    "blob": "485290530fc72a5bf45e4d7682d230762ac58f5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 66,
    "path": "GRWTSK/Analysis/Real/TentWeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c9b62be13535cfa2d5b2a487b4fab8f420157d0e5ce63b2c6ddecabf42ef3d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/TentWeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb145256-e46c-10e9-c931-d4476313b3b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hinge_second_difference (x h t : ℝ) (hh : 0 < h) :
    max (x + h - t) 0 - 2 * max (x - t) 0 + max (x - h - t) 0 =
      h * tent x h t := by
  by_cases hleft : t ≤ x - h
  · rw [tent_eq_zero_of_outside x h t hh (by intro ht; linarith [ht.1])]
    rw [max_eq_left (by linarith), max_eq_left (by linarith),
      max_eq_left (by linarith)]
    ring
  by_cases hmid : t ≤ x
  · rw [tent_on_left x h t hh (by linarith) hmid]
    rw [max_eq_left (by linarith), max_eq_left (by linarith),
      max_eq_right (by linarith)]
    field_simp [ne_of_gt hh]
    ring
  by_cases hright : t ≤ x + h
  · rw [tent_on_right x h t hh (by linarith) hright]
    rw [max_eq_left (by linarith), max_eq_right (by linarith),
      max_eq_right (by linarith)]
    field_simp [ne_of_gt hh]
    ring
  · rw [tent_eq_zero_of_outside x h t hh (by intro ht; linarith [ht.2])]
    rw [max_eq_right (by linarith), max_eq_right (by linarith),
      max_eq_right (by linarith)]
    ring

/-- The affine terms in a first Riesz explicit formula cancel exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/TentWeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/TentWeight.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485290530fc72a5bf45e4d7682d230762ac58f5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
