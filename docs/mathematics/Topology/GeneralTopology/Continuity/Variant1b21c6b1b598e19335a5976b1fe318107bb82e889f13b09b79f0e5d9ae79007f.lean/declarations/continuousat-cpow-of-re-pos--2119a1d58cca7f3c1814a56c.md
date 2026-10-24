# continuousAt_cpow_of_re_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27eb55e2-13ea-bdc3-cb4b-f41ea7f7e3fa",
  "kind": "theorem",
  "lexical_name": "continuousAt_cpow_of_re_pos",
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
  "slug": "continuousat-cpow-of-re-pos--2119a1d58cca7f3c1814a56c",
  "source": {
    "blob": "23213b5dd4f6dd1d619013603550d890ded66861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 335,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant1b21c6b1b598e19335a5976b1fe318107bb82e889f13b09b79f0e5d9ae79007f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2119a1d58cca7f3c1814a56c59e2aff7bbd01ae2bd7609fc5ee58716f2a1813a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant1b21c6b1b598e19335a5976b1fe318107bb82e889f13b09b79f0e5d9ae79007f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27eb55e2-13ea-bdc3-cb4b-f41ea7f7e3fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_cpow_of_re_pos {p : ℂ × ℂ} (h₁ : 0 ≤ p.1.re ∨ p.1.im ≠ 0) (h₂ : 0 < p.2.re) :
    ContinuousAt (fun x : ℂ × ℂ => x.1 ^ x.2) p := by
  obtain ⟨z, w⟩ := p
  rw [← not_lt_zero_iff, lt_iff_le_and_ne, not_and_or, Ne, Classical.not_not,
    not_le_zero_iff] at h₁
  rcases h₁ with (h₁ | (rfl : z = 0))
  exacts [continuousAt_cpow h₁, continuousAt_cpow_zero_of_re_pos h₂]

/-- See also `continuousAt_cpow_const` for a version that assumes `z ≠ 0` but makes no
assumptions about `w`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant1b21c6b1b598e19335a5976b1fe318107bb82e889f13b09b79f0e5d9ae79007f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant1b21c6b1b598e19335a5976b1fe318107bb82e889f13b09b79f0e5d9ae79007f.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23213b5dd4f6dd1d619013603550d890ded66861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
