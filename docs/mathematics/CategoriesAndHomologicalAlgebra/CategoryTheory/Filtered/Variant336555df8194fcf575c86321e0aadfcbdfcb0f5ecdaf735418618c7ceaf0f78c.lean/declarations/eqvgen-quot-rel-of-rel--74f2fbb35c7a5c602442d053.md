# eqvGen_quot_rel_of_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c61ea792-726f-e381-ed3c-81e6f4554274",
  "kind": "theorem",
  "lexical_name": "eqvGen_quot_rel_of_rel",
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
  "slug": "eqvgen-quot-rel-of-rel--74f2fbb35c7a5c602442d053",
  "source": {
    "blob": "4cebf179c791dc58c820ce80a4f7ebed23e14273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 54,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74f2fbb35c7a5c602442d0536293639ca531d4bc30ae0fb2f970b033f3fac916",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c61ea792-726f-e381-ed3c-81e6f4554274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqvGen_quot_rel_of_rel (x y : Σ j, F.obj j) :
    FilteredColimit.Rel.{v, u} F x y → Relation.EqvGen (Quot.Rel F) x y := fun ⟨k, f, g, h⟩ => by
  refine Relation.EqvGen.trans _ ⟨k, F.map f x.2⟩ _ ?_ ?_
  · exact (Relation.EqvGen.rel _ _ ⟨f, rfl⟩)
  · exact (Relation.EqvGen.symm _ _ (Relation.EqvGen.rel _ _ ⟨g, h⟩))

/-- Recognizing filtered colimits of types. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cebf179c791dc58c820ce80a4f7ebed23e14273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
