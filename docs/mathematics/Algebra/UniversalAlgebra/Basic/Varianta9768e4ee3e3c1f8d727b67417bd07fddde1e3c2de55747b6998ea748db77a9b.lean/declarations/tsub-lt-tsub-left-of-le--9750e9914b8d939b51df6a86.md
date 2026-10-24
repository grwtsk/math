# tsub_lt_tsub_left_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad9b890045fdad1c4a85964009263086e8d3ce70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9768e4ee3e3c1f8d727b67417bd07fddde1e3c2de55747b6998ea748db77a9b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7891ffa7-e0bf-fa77-8ab6-15c776d69a13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47198ad5-df8b-b1ac-ee64-be2b9a7a5b48",
  "kind": "theorem",
  "lexical_name": "tsub_lt_tsub_left_of_le",
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
  "slug": "tsub-lt-tsub-left-of-le--9750e9914b8d939b51df6a86",
  "source": {
    "blob": "ad9b890045fdad1c4a85964009263086e8d3ce70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 142,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Varianta9768e4ee3e3c1f8d727b67417bd07fddde1e3c2de55747b6998ea748db77a9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9750e9914b8d939b51df6a863600547a95d3a794e87a49ee27941762a0185166",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Varianta9768e4ee3e3c1f8d727b67417bd07fddde1e3c2de55747b6998ea748db77a9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47198ad5-df8b-b1ac-ee64-be2b9a7a5b48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tsub_lt_tsub_left_of_le (hab : AddLECancellable (a - b)) (h₁ : b ≤ a)
    (h : c < b) : a - b < a - c :=
  (tsub_le_tsub_left h.le _).lt_of_ne fun h' => h.ne' <| hab.tsub_inj_right h₁ (h.le.trans h₁) h'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Varianta9768e4ee3e3c1f8d727b67417bd07fddde1e3c2de55747b6998ea748db77a9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Varianta9768e4ee3e3c1f8d727b67417bd07fddde1e3c2de55747b6998ea748db77a9b.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9b890045fdad1c4a85964009263086e8d3ce70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
