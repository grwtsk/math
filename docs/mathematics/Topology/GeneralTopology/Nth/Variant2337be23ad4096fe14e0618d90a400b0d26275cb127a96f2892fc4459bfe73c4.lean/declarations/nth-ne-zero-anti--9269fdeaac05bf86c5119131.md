# nth_ne_zero_anti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d216909-aeaf-b6da-485c-d67aab4044ed",
  "kind": "lemma",
  "lexical_name": "nth_ne_zero_anti",
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
  "slug": "nth-ne-zero-anti--9269fdeaac05bf86c5119131",
  "source": {
    "blob": "7182e6827ccf2929f6f6329d723867fd014d452e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 261,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9269fdeaac05bf86c5119131be15c5158b165ccd7ed480b4adaae960a7e964f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d216909-aeaf-b6da-485c-d67aab4044ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nth_ne_zero_anti (h₀ : ¬p 0) {a b : ℕ} (hab : a ≤ b) (hb : nth p b ≠ 0) : nth p a ≠ 0 :=
  mt (nth_eq_zero_mono h₀ hab) hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variant2337be23ad4096fe14e0618d90a400b0d26275cb127a96f2892fc4459bfe73c4.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7182e6827ccf2929f6f6329d723867fd014d452e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
