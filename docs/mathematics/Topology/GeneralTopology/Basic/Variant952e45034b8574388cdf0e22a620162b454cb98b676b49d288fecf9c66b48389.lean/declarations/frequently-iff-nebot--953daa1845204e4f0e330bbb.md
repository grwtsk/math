# frequently_iff_neBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e6edd87-6d23-a2f1-042a-05a048092d8f",
  "kind": "lemma",
  "lexical_name": "frequently_iff_neBot",
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
  "slug": "frequently-iff-nebot--953daa1845204e4f0e330bbb",
  "source": {
    "blob": "7084d07ff0cc5bcd9188744def52f8656690516c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 822,
    "line": 819,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:953daa1845204e4f0e330bbb57a3eaebf1f76044974822979a53b504e16e60de",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e6edd87-6d23-a2f1-042a-05a048092d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 819–822.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma frequently_iff_neBot {l : Filter α} {p : α → Prop} :
    (∃ᶠ x in l, p x) ↔ NeBot (l ⊓ 𝓟 {x | p x}) := by
  rw [neBot_iff, Ne, inf_principal_eq_bot]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant952e45034b8574388cdf0e22a620162b454cb98b676b49d288fecf9c66b48389.lean#L819).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7084d07ff0cc5bcd9188744def52f8656690516c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
