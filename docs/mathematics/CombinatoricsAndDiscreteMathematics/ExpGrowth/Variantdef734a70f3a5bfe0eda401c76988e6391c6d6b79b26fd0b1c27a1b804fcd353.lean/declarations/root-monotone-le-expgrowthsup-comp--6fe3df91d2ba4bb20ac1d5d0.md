# _root_.Monotone.le_expGrowthSup_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f4e252c7ec72b0b277eeeb395db1e04067c9e9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/de/def734a70f3a5bfe0eda401c76988e6391c6d6b79b26fd0b1c27a1b804fcd353.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cca290f7-21a6-f401-625e-87d98888bbda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0bc6e74-8644-c29b-6081-5b0de6acfc3f",
  "kind": "lemma",
  "lexical_name": "_root_.Monotone.le_expGrowthSup_comp",
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
  "slug": "root-monotone-le-expgrowthsup-comp--6fe3df91d2ba4bb20ac1d5d0",
  "source": {
    "blob": "9f4e252c7ec72b0b277eeeb395db1e04067c9e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 409,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variantdef734a70f3a5bfe0eda401c76988e6391c6d6b79b26fd0b1c27a1b804fcd353.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fe3df91d2ba4bb20ac1d5d01efa4abd0ed87dc6dd96f5f05b7b8e882838be1d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variantdef734a70f3a5bfe0eda401c76988e6391c6d6b79b26fd0b1c27a1b804fcd353.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0bc6e74-8644-c29b-6081-5b0de6acfc3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Monotone.le_expGrowthSup_comp (h : Monotone u)
    (hv : (linearGrowthInf fun n ↦ v n : EReal) ≠ 0) :
    (linearGrowthInf fun n ↦ v n : EReal) * expGrowthSup u ≤ expGrowthSup (u ∘ v) :=
  (log_monotone.comp h).le_linearGrowthSup_comp hv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variantdef734a70f3a5bfe0eda401c76988e6391c6d6b79b26fd0b1c27a1b804fcd353.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExpGrowth/Variantdef734a70f3a5bfe0eda401c76988e6391c6d6b79b26fd0b1c27a1b804fcd353.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4e252c7ec72b0b277eeeb395db1e04067c9e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
