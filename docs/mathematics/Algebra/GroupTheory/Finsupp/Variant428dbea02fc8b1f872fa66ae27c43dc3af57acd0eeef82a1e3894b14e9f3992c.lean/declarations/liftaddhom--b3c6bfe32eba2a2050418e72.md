# liftAddHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb7786534c41982dedd47c4da4d4781d571d016f13e93ec0cff54d693f21620a",
  "kind": "def",
  "lexical_name": "liftAddHom",
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
  "slug": "liftaddhom--b3c6bfe32eba2a2050418e72",
  "source": {
    "blob": "c6610e0c18165f686412d7dd95a456bb38dae87a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 417,
    "path": "GRWTSK/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3c6bfe32eba2a2050418e723a277bbf34134feaf71ad7b41420c47c80c91cb6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb7786534c41982dedd47c4da4d4781d571d016f13e93ec0cff54d693f21620a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftAddHom [AddZeroClass M] [AddCommMonoid N] : (α → M →+ N) ≃+ ((α →₀ M) →+ N)
    where
  toFun F :=
    { toFun := fun f ↦ f.sum fun x ↦ F x
      map_zero' := Finset.sum_empty
      map_add' := fun _ _ => sum_add_index' (fun x => (F x).map_zero) fun x => (F x).map_add }
  invFun F x := F.comp (singleAddHom x)
  left_inv F := by
    ext
    simp [singleAddHom]
  right_inv F := by
  -- Porting note: This was `ext` and used the wrong lemma
    apply Finsupp.addHom_ext'
    simp [singleAddHom, AddMonoidHom.comp, Function.comp]
  map_add' F G := by
    ext x
    exact sum_add
#align finsupp.lift_add_hom Finsupp.liftAddHom

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finsupp/Variant428dbea02fc8b1f872fa66ae27c43dc3af57acd0eeef82a1e3894b14e9f3992c.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6610e0c18165f686412d7dd95a456bb38dae87a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
