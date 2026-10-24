# aeval_comp_repr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3817b712-b7c7-66d9-7493-f6bd593ab2a4",
  "kind": "theorem",
  "lexical_name": "aeval_comp_repr",
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
  "slug": "aeval-comp-repr--2f2ebef79faf972b7d7bc503",
  "source": {
    "blob": "07a1071ed4751cd5e535c41282593a7a55c472cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 153,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f2ebef79faf972b7d7bc5035c424335fcc96b10d86b55c3430d7fa55915a6d6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3817b712-b7c7-66d9-7493-f6bd593ab2a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_comp_repr : (aeval x).comp hx.repr = Subalgebra.val _ :=
  AlgHom.ext hx.aeval_repr

end repr

end AlgebraicIndependent

variable (R) in
/-- A family is a transcendence basis if it is a maximal algebraically independent subset. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Defs/Variantc3c7cae76c35ae166dc46871667a79bf03d8b4ed32941ec528577bba29ffdadb.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07a1071ed4751cd5e535c41282593a7a55c472cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
