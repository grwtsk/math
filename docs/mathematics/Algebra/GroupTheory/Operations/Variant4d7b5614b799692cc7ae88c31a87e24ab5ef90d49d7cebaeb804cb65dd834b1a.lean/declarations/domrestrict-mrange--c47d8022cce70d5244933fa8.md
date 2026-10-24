# domRestrict_mrange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b17f9bab767328aa184ca4e026031c6d92829dab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 736,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9aee962-b3cb-be65-8312-5cd1d7546802",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d4e02c1-8cef-8e3f-918d-0a64db901d10",
  "kind": "theorem",
  "lexical_name": "domRestrict_mrange",
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
  "slug": "domrestrict-mrange--c47d8022cce70d5244933fa8",
  "source": {
    "blob": "b17f9bab767328aa184ca4e026031c6d92829dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 745,
    "line": 736,
    "path": "GRWTSK/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c47d8022cce70d5244933fa875b2de5e4e084788bb0220979b47028da735a1b3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d4e02c1-8cef-8e3f-918d-0a64db901d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–745.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domRestrict_mrange (f : M →* N) : mrange (f.domRestrict S) = S.map f := by
  simp [SetLike.ext_iff]

@[deprecated (since := "2026-07-19")] alias restrict_mrange := domRestrict_mrange
@[deprecated (since := "2026-07-19")]
alias _root_.AddMonoidHom.restrict_mrange := _root_.AddMonoidHom.domRestrict_mrange

/-- A version of `MonoidHom.domRestrict` as a homomorphism. -/
@[to_additive (attr := simps apply)
  /-- A version of `AddMonoidHom.domRestrict` as a homomorphism. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Operations/Variant4d7b5614b799692cc7ae88c31a87e24ab5ef90d49d7cebaeb804cb65dd834b1a.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17f9bab767328aa184ca4e026031c6d92829dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
