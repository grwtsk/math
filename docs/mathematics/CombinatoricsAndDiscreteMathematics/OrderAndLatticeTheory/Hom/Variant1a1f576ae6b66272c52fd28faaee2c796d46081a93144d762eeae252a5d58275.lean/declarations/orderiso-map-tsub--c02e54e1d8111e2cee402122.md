# OrderIso.map_tsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6efc89f1-eaf7-b606-691c-bd00556fb887",
  "kind": "theorem",
  "lexical_name": "OrderIso.map_tsub",
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
  "slug": "orderiso-map-tsub--c02e54e1d8111e2cee402122",
  "source": {
    "blob": "ef8a96e76bb6c69a3e2a642cbfa17ee85ada8893",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c02e54e1d8111e2cee40212282664de416d2ea7ed1fcf07a00fb81f5ce2044ed",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6efc89f1-eaf7-b606-691c-bd00556fb887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OrderIso.map_tsub {M N : Type*} [Preorder M] [Add M] [Sub M] [OrderedSub M]
    [PartialOrder N] [Add N] [Sub N] [OrderedSub N] (e : M ≃o N)
    (h_add : ∀ a b, e (a + b) = e a + e b) (a b : M) : e (a - b) = e a - e b := by
  let e_add : M ≃+ N := { e with map_add' := h_add }
  refine le_antisymm ?_ (e_add.toAddHom.le_map_tsub e.monotone a b)
  suffices e (e.symm (e a) - e.symm (e b)) ≤ e (e.symm (e a - e b)) by simpa
  exact e.monotone (e_add.symm.toAddHom.le_map_tsub e.symm.monotone _ _)

/-! ### Preorder -/


section Preorder

variable [Preorder α]
variable [AddCommMonoid α] [Sub α] [OrderedSub α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Hom/Variant1a1f576ae6b66272c52fd28faaee2c796d46081a93144d762eeae252a5d58275.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef8a96e76bb6c69a3e2a642cbfa17ee85ada8893` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
