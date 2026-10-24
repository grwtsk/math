# eq_top_of_norm_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c617763067e715057d4e4482c2adaa56ee4e1d4e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 216,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94cb4ca6-4a54-040e-dd67-5eb55cf37ea2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db61063d-8f09-9791-9e89-f31760f2617d",
  "kind": "theorem",
  "lexical_name": "eq_top_of_norm_lt_one",
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
  "slug": "eq-top-of-norm-lt-one--e9b96e304350f180b2d6d2a9",
  "source": {
    "blob": "c617763067e715057d4e4482c2adaa56ee4e1d4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/Units/Variant10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9b96e304350f180b2d6d2a98042e53d40b3d184c4be633202600b90e5f3bc30",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Units/Variant10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db61063d-8f09-9791-9e89-f31760f2617d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_top_of_norm_lt_one (I : Ideal R) {x : R} (hxI : x ∈ I) (hx : ‖1 - x‖ < 1) : I = ⊤ :=
  let u := Units.oneSub (1 - x) hx
  I.eq_top_iff_one.mpr <| by
    simpa only [show u.inv * x = 1 by simp [u]] using I.mul_mem_left u.inv hxI

/-- The `Ideal.closure` of a proper ideal in a normed ring with summable
geometric series is proper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Units/Variant10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Units/Variant10acfb9b30efb5cab35ef0fe14a9dc2e800fa3c189f0c914e927d6aa2431da9a.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c617763067e715057d4e4482c2adaa56ee4e1d4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
