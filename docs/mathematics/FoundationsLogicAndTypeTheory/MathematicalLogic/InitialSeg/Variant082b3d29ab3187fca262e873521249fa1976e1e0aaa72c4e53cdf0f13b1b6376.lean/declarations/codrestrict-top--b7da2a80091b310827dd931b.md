# codRestrict_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b77aefec8f680a4a7f796695c72ef241df2c7b2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 426,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/082b3d29ab3187fca262e873521249fa1976e1e0aaa72c4e53cdf0f13b1b6376.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4116a850-9c54-fdaf-5c89-73970a2d1dee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:59640aa6-d37b-7da1-d79f-734a68494eae",
  "kind": "theorem",
  "lexical_name": "codRestrict_top",
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
  "slug": "codrestrict-top--b7da2a80091b310827dd931b",
  "source": {
    "blob": "4b77aefec8f680a4a7f796695c72ef241df2c7b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 426,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant082b3d29ab3187fca262e873521249fa1976e1e0aaa72c4e53cdf0f13b1b6376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7da2a80091b310827dd931bf14a9cdf96eabef5d861bcf9883709cb526f9169",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant082b3d29ab3187fca262e873521249fa1976e1e0aaa72c4e53cdf0f13b1b6376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59640aa6-d37b-7da1-d79f-734a68494eae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem codRestrict_top (p) (f : r ≺i s) (H H₂) : (codRestrict p f H H₂).top = ⟨f.top, H₂⟩ :=
  rfl
#align principal_seg.cod_restrict_top PrincipalSeg.codRestrict_top

/-- Principal segment from an empty type into a type with a minimal element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant082b3d29ab3187fca262e873521249fa1976e1e0aaa72c4e53cdf0f13b1b6376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InitialSeg/Variant082b3d29ab3187fca262e873521249fa1976e1e0aaa72c4e53cdf0f13b1b6376.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b77aefec8f680a4a7f796695c72ef241df2c7b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
