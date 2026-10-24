# eulerMascheroniSeq_lt_eulerMascheroniSeq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c33c22e-cd6b-8aa8-de92-ee9ac558a1df",
  "kind": "lemma",
  "lexical_name": "eulerMascheroniSeq_lt_eulerMascheroniSeq'",
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
  "slug": "eulermascheroniseq-lt-eulermascheroniseq--87930ad865233caed966f7be",
  "source": {
    "blob": "45a45b26c3b72e2e2e863d3ea55ef8e4a8412916",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87930ad865233caed966f7be8cfe4a6390a1d1662d47a0ec0e087103bcbd0d6d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c33c22e-cd6b-8aa8-de92-ee9ac558a1df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eulerMascheroniSeq_lt_eulerMascheroniSeq' (m n : ℕ) :
    eulerMascheroniSeq m < eulerMascheroniSeq' n := by
  have (r : ℕ) : eulerMascheroniSeq r < eulerMascheroniSeq' r := by
    rcases eq_zero_or_pos r with rfl | hr
    · simp [eulerMascheroniSeq, eulerMascheroniSeq']
    simp only [eulerMascheroniSeq, eulerMascheroniSeq', hr.ne', ite_false]
    gcongr
    linarith
  apply (strictMono_eulerMascheroniSeq.monotone (le_max_left m n)).trans_lt
  exact (this _).trans_le (strictAnti_eulerMascheroniSeq'.antitone (le_max_right m n))

end UpperSequence

/-- The Euler-Mascheroni constant `γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EulerMascheroni/Variant4a415ee9293703152a824fbfa9f35bee4ccc33f64b300e7b64113a3e4f14fb9b.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a45b26c3b72e2e2e863d3ea55ef8e4a8412916` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
