# comparison_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c3dc146658b69a926e70c6b53d41d16117b477f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:932a872d-0a4e-ea41-932c-fc4a583fea1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b0626b15-d4a3-d0e1-bccf-6876f0ba090f",
  "kind": "theorem",
  "lexical_name": "comparison_apply",
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
  "slug": "comparison-apply--09fb2aa99674a812a8f9a440",
  "source": {
    "blob": "2c3dc146658b69a926e70c6b53d41d16117b477f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 111,
    "path": "GRWTSK/Algebra/GroupTheory/Comparison/Variant7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09fb2aa99674a812a8f9a4406744309ae295b94b6a0a8bc00906da57942b9bb5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Comparison/Variant7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0626b15-d4a3-d0e1-bccf-6876f0ba090f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comparison_apply
    {Representation : Type uP}
    (F : RepresentationFamily Representation)
    (representation : Representation)
    (degree : Int)
    (x : F.Source degree) :
    (F.comparison degree).map representation x =
      F.map representation degree x :=
  rfl

/-- A fixed representation selects an ordinary comparison, without erasing the family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Comparison/Variant7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Comparison/Variant7ebe7bf2537378473b3680ab88821d442e16bb2d95ce06494cc19fac6b10e070.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c3dc146658b69a926e70c6b53d41d16117b477f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
