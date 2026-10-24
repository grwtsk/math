# ofComplex_apply_eq_ite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6badf738bd45f6b402b0428d7c74102a25cd04c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:747c98ab-ab5b-a003-3b1d-32731647d736",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4dbffee0-bc27-4f57-449c-6f949c07d787",
  "kind": "lemma",
  "lexical_name": "ofComplex_apply_eq_ite",
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
  "slug": "ofcomplex-apply-eq-ite--4bcc443c22ccc6d34e9a7961",
  "source": {
    "blob": "f6badf738bd45f6b402b0428d7c74102a25cd04c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bcc443c22ccc6d34e9a79618d616a194b47608080fae19a381d1df58f757901",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dbffee0-bc27-4f57-449c-6f949c07d787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofComplex_apply_eq_ite (w : ℂ) :
    ofComplex w = if hw : 0 < w.im then ⟨w, hw⟩ else Classical.choice inferInstance := by
  split_ifs with hw
  · exact ofComplex_apply ⟨w, hw⟩
  · change (Function.invFunOn UpperHalfPlane.coe Set.univ w) = _
    simp only [invFunOn, dite_eq_right_iff, mem_univ, true_and]
    rintro ⟨a, rfl⟩
    exact (a.prop.not_le (by simpa using hw)).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6badf738bd45f6b402b0428d7c74102a25cd04c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
