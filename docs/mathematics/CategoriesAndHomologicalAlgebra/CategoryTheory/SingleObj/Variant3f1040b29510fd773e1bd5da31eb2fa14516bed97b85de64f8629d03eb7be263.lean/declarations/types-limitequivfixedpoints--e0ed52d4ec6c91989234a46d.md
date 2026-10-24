# Types.limitEquivFixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc7421a21a6b83ded966ac4a37d044adeacf1a0490406e0b9c04109260d38d34",
  "kind": "def",
  "lexical_name": "Types.limitEquivFixedPoints",
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
  "slug": "types-limitequivfixedpoints--e0ed52d4ec6c91989234a46d",
  "source": {
    "blob": "50df41bfc584033db27db6723d5bacb808e5b579",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0ed52d4ec6c91989234a46d33805c4406acc60288c2ac23e0e66937fc822186",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc7421a21a6b83ded966ac4a37d044adeacf1a0490406e0b9c04109260d38d34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Types.limitEquivFixedPoints :
    limit J ≃ MulAction.fixedPoints M (J.obj (SingleObj.star M)) :=
  (Types.limitEquivSections J).trans (Types.sections.equivFixedPoints J)

end Limits

section Colimits

variable {G : Type v} [Group G] (J : SingleObj G ⥤ Type u)

/-- The relation used to construct colimits in types for `J : SingleObj G ⥤ Type u` is
equivalent to the `MulAction.orbitRel` equivalence relation on `J.obj (SingleObj.star G)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant3f1040b29510fd773e1bd5da31eb2fa14516bed97b85de64f8629d03eb7be263.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50df41bfc584033db27db6723d5bacb808e5b579` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
