# complEDS₂_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fd27ef19864046c4bbd5e7e9df7ba900f18c1e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 515,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6020aa2b-ce1e-ba09-ec40-9dc446ecc077",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c63a3e35-d089-8852-ca5e-779920e7d2e0",
  "kind": "lemma",
  "lexical_name": "complEDS₂_two",
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
  "slug": "compleds-two--68941798cf7cde6efbd8da2d",
  "source": {
    "blob": "4fd27ef19864046c4bbd5e7e9df7ba900f18c1e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 515,
    "path": "GRWTSK/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68941798cf7cde6efbd8da2d8b2904461bbcbc5feace9f2c20e84c331652c759",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c63a3e35-d089-8852-ca5e-779920e7d2e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma complEDS₂_two : complEDS₂ b c d 2 = d := by
  simp [complEDS₂]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fd27ef19864046c4bbd5e7e9df7ba900f18c1e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
