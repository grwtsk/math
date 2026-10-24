# compNatIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ccb05443d9b663f340a4fa9f0126ebdff0e377e9f5fe712dfc5be31f4920cbe",
  "kind": "def",
  "lexical_name": "compNatIso",
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
  "slug": "compnatiso--bd857aa003ad6b812b77a359",
  "source": {
    "blob": "caebdbe22fa16ae321ede4d6fbb8a8a53b6283ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant4492a52f5355531a7ca5088ff3dc51a2241a3d404d4d40e537fc2965b82840de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd857aa003ad6b812b77a35950c8151361da016b4a944b64f00f96af32f5b954",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant4492a52f5355531a7ca5088ff3dc51a2241a3d404d4d40e537fc2965b82840de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ccb05443d9b663f340a4fa9f0126ebdff0e377e9f5fe712dfc5be31f4920cbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compNatIso {D : Type u'} [Category.{v} D] [HasZeroMorphisms D] (F : C ⥤ D) [IsEquivalence F] :
    parallelPair f 0 ⋙ F ≅ parallelPair (F.map f) 0 :=
  let app (j :WalkingParallelPair) :
      (parallelPair f 0 ⋙ F).obj j ≅ (parallelPair (F.map f) 0).obj j :=
    match j with
    | zero => Iso.refl _
    | one => Iso.refl _
  NatIso.ofComponents app <| by rintro ⟨i⟩ ⟨j⟩ <;> intro g <;> cases g <;> simp
#align category_theory.limits.comp_nat_iso CategoryTheory.Limits.compNatIso

end

/-- If `s` is a limit kernel fork and `k : W ⟶ X` satisfies `k ≫ f = 0`, then there is some
    `l : W ⟶ s.X` such that `l ≫ fork.ι s = k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant4492a52f5355531a7ca5088ff3dc51a2241a3d404d4d40e537fc2965b82840de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant4492a52f5355531a7ca5088ff3dc51a2241a3d404d4d40e537fc2965b82840de.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caebdbe22fa16ae321ede4d6fbb8a8a53b6283ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
