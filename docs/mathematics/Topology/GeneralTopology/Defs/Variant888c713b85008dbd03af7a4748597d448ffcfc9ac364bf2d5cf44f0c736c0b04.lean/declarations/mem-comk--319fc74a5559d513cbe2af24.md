# mem_comk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0fbf50e-570d-acb2-edf5-ae5be627ac50",
  "kind": "lemma",
  "lexical_name": "mem_comk",
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
  "slug": "mem-comk--319fc74a5559d513cbe2af24",
  "source": {
    "blob": "60e7e458ccdb4eeceef9a4a8197d71cce889b8a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant888c713b85008dbd03af7a4748597d448ffcfc9ac364bf2d5cf44f0c736c0b04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:319fc74a5559d513cbe2af2444613534b039e624271527061b645e4c9c1c4c8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant888c713b85008dbd03af7a4748597d448ffcfc9ac364bf2d5cf44f0c736c0b04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0fbf50e-570d-acb2-edf5-ae5be627ac50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_comk {p : Set α → Prop} {he hmono hunion s} :
    s ∈ comk p he hmono hunion ↔ p sᶜ :=
  .rfl

/-- The principal filter of `s` is the collection of all supersets of `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant888c713b85008dbd03af7a4748597d448ffcfc9ac364bf2d5cf44f0c736c0b04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant888c713b85008dbd03af7a4748597d448ffcfc9ac364bf2d5cf44f0c736c0b04.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60e7e458ccdb4eeceef9a4a8197d71cce889b8a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
