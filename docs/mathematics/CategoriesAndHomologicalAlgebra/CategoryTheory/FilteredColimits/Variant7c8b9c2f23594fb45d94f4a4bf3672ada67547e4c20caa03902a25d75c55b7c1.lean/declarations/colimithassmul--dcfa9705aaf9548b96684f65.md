# colimitHasSmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bad6912dc06aa2b426135291a8fd39e0c4bbf674bfb5fe13af1ca12980b1e85",
  "kind": "instance",
  "lexical_name": "colimitHasSmul",
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
  "slug": "colimithassmul--dcfa9705aaf9548b96684f65",
  "source": {
    "blob": "1cabd926dfb7aafd3cdee91eaa7dfdda854b9e70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcfa9705aaf9548b96684f65eb53539f69c0fa23963f24a221c39bfd4bbbcf33",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bad6912dc06aa2b426135291a8fd39e0c4bbf674bfb5fe13af1ca12980b1e85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance colimitHasSmul : SMul R (M F) where
  smul r x := by
    refine' Quot.lift (colimitSMulAux F r) _ x
    intro x y h
    apply colimitSMulAux_eq_of_rel
    apply Types.FilteredColimit.rel_of_quot_rel
    exact h
set_option linter.uppercaseLean3 false in
#align Module.filtered_colimits.colimit_has_smul ModuleCat.FilteredColimits.colimitHasSmul

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7c8b9c2f23594fb45d94f4a4bf3672ada67547e4c20caa03902a25d75c55b7c1.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cabd926dfb7aafd3cdee91eaa7dfdda854b9e70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
