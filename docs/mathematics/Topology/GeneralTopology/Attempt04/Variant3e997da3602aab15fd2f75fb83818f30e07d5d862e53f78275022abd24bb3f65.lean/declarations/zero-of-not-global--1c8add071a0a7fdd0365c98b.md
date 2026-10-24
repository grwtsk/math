# zero_of_not_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c72199f7-a9be-1f9e-148b-e0754c790953",
  "kind": "theorem",
  "lexical_name": "zero_of_not_global",
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
  "slug": "zero-of-not-global--1c8add071a0a7fdd0365c98b",
  "source": {
    "blob": "9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c8add071a0a7fdd0365c98b42c55669b5d1fe79a4f2dd378f118e454a972860",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c72199f7-a9be-1f9e-148b-e0754c790953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_of_not_global {f : ℝ → ℝ}
    (hcont : ContinuousOn f (Ioi 0)) (hsmall : SmallPositive f)
    (hfailure : ¬ GlobalNonnegative f) :
    ∃ b c : ℝ, 0 < c ∧ c < b ∧ f c = 0 ∧ f b < 0 := by
  unfold GlobalNonnegative at hfailure
  push Not at hfailure
  obtain ⟨b, hb, hnegative⟩ := hfailure
  obtain ⟨c, hc, hcb, hzero⟩ := zero_before_negative hcont hsmall hb hnegative
  exact ⟨b, c, hc, hcb, hzero, hnegative⟩

/-- Nonvanishing on *every* positive scale is an additional global premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variant3e997da3602aab15fd2f75fb83818f30e07d5d862e53f78275022abd24bb3f65.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b7e508a76b0a90153e4950a2bd34b2daa9ae6d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
