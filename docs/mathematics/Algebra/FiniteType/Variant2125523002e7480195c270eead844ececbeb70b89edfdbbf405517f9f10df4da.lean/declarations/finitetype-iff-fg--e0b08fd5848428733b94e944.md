# finiteType_iff_fg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f953501655438fd45e5bbe4704e1101402485cc1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 577,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/2125523002e7480195c270eead844ececbeb70b89edfdbbf405517f9f10df4da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5164bad0-df0a-616a-5357-cdd532e4d88c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3eef75e3-ad05-131b-a75c-0a65c73dbac3",
  "kind": "theorem",
  "lexical_name": "finiteType_iff_fg",
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
  "slug": "finitetype-iff-fg--e0b08fd5848428733b94e944",
  "source": {
    "blob": "f953501655438fd45e5bbe4704e1101402485cc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 577,
    "path": "GRWTSK/Algebra/FiniteType/Variant2125523002e7480195c270eead844ececbeb70b89edfdbbf405517f9f10df4da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0b08fd5848428733b94e944d35f91fe7ad55e32d793205ea7320658c25d86e7",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant2125523002e7480195c270eead844ececbeb70b89edfdbbf405517f9f10df4da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eef75e3-ad05-131b-a75c-0a65c73dbac3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteType_iff_fg [CommRing R] [Nontrivial R] : FiniteType R R[M] ↔ Monoid.FG M where
  mp h := Monoid.fg_iff_add_fg.2 <|
    AddMonoidAlgebra.finiteType_iff_fg.1 <| h.equiv <| toAdditiveAlgEquiv R R M
  mpr _ := inferInstance

/-- If `R[M]` is of finite type then `M` is finitely generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant2125523002e7480195c270eead844ececbeb70b89edfdbbf405517f9f10df4da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant2125523002e7480195c270eead844ececbeb70b89edfdbbf405517f9f10df4da.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f953501655438fd45e5bbe4704e1101402485cc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
