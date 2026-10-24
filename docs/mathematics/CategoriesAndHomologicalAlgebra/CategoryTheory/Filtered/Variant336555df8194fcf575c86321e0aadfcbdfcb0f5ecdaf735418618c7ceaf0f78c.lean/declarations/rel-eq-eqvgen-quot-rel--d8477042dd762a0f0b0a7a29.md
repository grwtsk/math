# rel_eq_eqvGen_quot_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:410fd8be-d52c-4c29-0747-2ce85dbd5b02",
  "kind": "theorem",
  "lexical_name": "rel_eq_eqvGen_quot_rel",
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
  "slug": "rel-eq-eqvgen-quot-rel--d8477042dd762a0f0b0a7a29",
  "source": {
    "blob": "4cebf179c791dc58c820ce80a4f7ebed23e14273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8477042dd762a0f0b0a7a29409e621a5f4731dab690e8ce91016ed05dd62bfc",
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

Occurrence: `result:410fd8be-d52c-4c29-0747-2ce85dbd5b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem rel_eq_eqvGen_quot_rel :
    FilteredColimit.Rel.{v, u} F = Relation.EqvGen (Quot.Rel F) := by
  ext ⟨j, x⟩ ⟨j', y⟩
  constructor
  · apply eqvGen_quot_rel_of_rel
  · rw [← (FilteredColimit.rel_equiv F).eqvGen_iff]
    exact Relation.EqvGen.mono (rel_of_quot_rel F)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant336555df8194fcf575c86321e0aadfcbdfcb0f5ecdaf735418618c7ceaf0f78c.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cebf179c791dc58c820ce80a4f7ebed23e14273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
