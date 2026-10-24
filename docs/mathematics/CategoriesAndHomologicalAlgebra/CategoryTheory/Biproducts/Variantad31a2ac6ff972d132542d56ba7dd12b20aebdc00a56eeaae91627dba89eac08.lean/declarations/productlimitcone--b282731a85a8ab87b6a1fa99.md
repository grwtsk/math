# productLimitCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72de7ddf8317a323b315630ab92b17961917c4dcb01080efc8c6b13c8396b71b",
  "kind": "def",
  "lexical_name": "productLimitCone",
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
  "slug": "productlimitcone--b282731a85a8ab87b6a1fa99",
  "source": {
    "blob": "c4cd1d14149d6e673ded55db5cbbc247687f4085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b282731a85a8ab87b6a1fa9943b19b56a6a767d94aee63aa73016299a6885b60",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72de7ddf8317a323b315630ab92b17961917c4dcb01080efc8c6b13c8396b71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def productLimitCone : Limits.LimitCone (Discrete.functor f) where
  cone :=
    { pt := AddCommGroupCat.of (∀ j, f j)
      π := Discrete.natTrans fun j => Pi.evalAddMonoidHom (fun j => f j) j.as }
  isLimit :=
    { lift := lift.{_, u} f
      fac := fun s j => rfl
      uniq := fun s m w => by
        ext x
        funext j
        exact congr_arg (fun g : s.pt ⟶ f j => (g : s.pt → f j) x) (w ⟨j⟩) }
#align AddCommGroup.has_limit.product_limit_cone AddCommGroupCat.HasLimit.productLimitCone

end HasLimit

open HasLimit

variable {J : Type} [Fintype J]

/-- We verify that the biproduct we've just defined is isomorphic to the `AddCommGroupCat` structure
on the dependent function type.
-/
@[simps! hom_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variantad31a2ac6ff972d132542d56ba7dd12b20aebdc00a56eeaae91627dba89eac08.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4cd1d14149d6e673ded55db5cbbc247687f4085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
