# ledgerContainsBool_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a22afcf7d66cb122305961d5d3f851e665023ddb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec259cdcfe0049e585ad96c111c036d35a566d5414fab859d28dfa2043ebb4f0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5aa124ba-5433-6bc1-2429-cdb15118e482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e4ef5db-a669-ac3a-ffef-484b4a92af35",
  "kind": "theorem",
  "lexical_name": "ledgerContainsBool_correct",
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
  "slug": "ledgercontainsbool-correct--63287f21b54a3f2ed33cfd2a",
  "source": {
    "blob": "a22afcf7d66cb122305961d5d3f851e665023ddb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantec259cdcfe0049e585ad96c111c036d35a566d5414fab859d28dfa2043ebb4f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63287f21b54a3f2ed33cfd2af22a280579e586480524575d170bf515b653e4be",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantec259cdcfe0049e585ad96c111c036d35a566d5414fab859d28dfa2043ebb4f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e4ef5db-a669-ac3a-ffef-484b4a92af35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ledgerContainsBool_correct
    {oldLedger newLedger : List Think.Residue}
    (h : ledgerContainsBool oldLedger newLedger = true) :
    ledgerContains oldLedger newLedger := by
  induction oldLedger with
  | nil =>
      intro r hr
      cases hr
  | cons head tail ih =>
      intro r hr
      simp [ledgerContainsBool] at h
      by_cases hh : head ∈ newLedger
      · simp [hh] at h
        have htail : ledgerContains tail newLedger := ih h
        simp at hr
        cases hr with
        | inl heq =>
            rw [heq]
            exact hh
        | inr hmem =>
            exact htail r hmem
      · simp [hh] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantec259cdcfe0049e585ad96c111c036d35a566d5414fab859d28dfa2043ebb4f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantec259cdcfe0049e585ad96c111c036d35a566d5414fab859d28dfa2043ebb4f0.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a22afcf7d66cb122305961d5d3f851e665023ddb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
