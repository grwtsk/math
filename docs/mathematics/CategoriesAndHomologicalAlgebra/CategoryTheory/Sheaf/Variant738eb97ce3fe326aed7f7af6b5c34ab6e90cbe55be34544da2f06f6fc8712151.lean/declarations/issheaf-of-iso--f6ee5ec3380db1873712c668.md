# isSheaf_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7af5a27c-6249-4a27-558e-487a005c81b1",
  "kind": "theorem",
  "lexical_name": "isSheaf_of_iso",
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
  "slug": "issheaf-of-iso--f6ee5ec3380db1873712c668",
  "source": {
    "blob": "966ee74571391e3e132311552cbd8a57423cc3e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 111,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant738eb97ce3fe326aed7f7af6b5c34ab6e90cbe55be34544da2f06f6fc8712151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6ee5ec3380db1873712c66880eb1b9b55a4856a7f948d4347aedcfd20063663",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant738eb97ce3fe326aed7f7af6b5c34ab6e90cbe55be34544da2f06f6fc8712151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7af5a27c-6249-4a27-558e-487a005c81b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_of_iso {F G : Presheaf C X} (α : F ≅ G) (h : F.IsSheaf) : G.IsSheaf :=
  (isSheaf_iso_iff α).1 h
set_option linter.uppercaseLean3 false in
#align Top.presheaf.is_sheaf_of_iso TopCat.Presheaf.isSheaf_of_iso

end Presheaf

variable (C X)

/-- A `TopCat.Sheaf C X` is a presheaf of objects from `C` over a (bundled) topological space `X`,
satisfying the sheaf condition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant738eb97ce3fe326aed7f7af6b5c34ab6e90cbe55be34544da2f06f6fc8712151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant738eb97ce3fe326aed7f7af6b5c34ab6e90cbe55be34544da2f06f6fc8712151.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966ee74571391e3e132311552cbd8a57423cc3e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
