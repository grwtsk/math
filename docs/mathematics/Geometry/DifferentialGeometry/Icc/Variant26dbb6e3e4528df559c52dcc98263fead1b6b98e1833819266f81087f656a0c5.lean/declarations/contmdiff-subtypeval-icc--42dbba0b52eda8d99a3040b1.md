# contMDiff_subtypeVal_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2bf5cd35be9e0fc47da1ad9d6f8aad0d98a4b77c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05564fad-b185-e200-6f59-3920bc9c30a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97ad2bdf-a141-9bd1-4c20-9fb9ddbec1d7",
  "kind": "lemma",
  "lexical_name": "contMDiff_subtypeVal_Icc",
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
  "slug": "contmdiff-subtypeval-icc--42dbba0b52eda8d99a3040b1",
  "source": {
    "blob": "2bf5cd35be9e0fc47da1ad9d6f8aad0d98a4b77c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 124,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Icc/Variant26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42dbba0b52eda8d99a3040b1007ab4468df699950b3d3f17093a1c406f8b9fdb",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Icc/Variant26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97ad2bdf-a141-9bd1-4c20-9fb9ddbec1d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contMDiff_subtypeVal_Icc : CMDiff n (fun (z : Icc x y) ↦ (z : ℝ)) :=
  isImmersionOfComplement_subtypeVal_Icc.contMDiff.of_le (OrderTop.le_top n)

@[deprecated (since := "2026-07-22")]
alias contMDiff_subtype_coe_Icc := contMDiff_subtypeVal_Icc

/-- A function `f : M → Icc x y` is smooth iff its composition with the inclusion
into `ℝ` is smooth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Icc/Variant26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Icc/Variant26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bf5cd35be9e0fc47da1ad9d6f8aad0d98a4b77c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
