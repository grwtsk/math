# comonadicOfHasPreservesCoreflexiveEqualizersOfReflectsIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d8b85d3c0b331470dc27732c2d9db26327e10e27bbafe6137927d80caca7535",
  "kind": "def",
  "lexical_name": "comonadicOfHasPreservesCoreflexiveEqualizersOfReflectsIsomorphisms",
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
  "slug": "comonadicofhaspreservescoreflexiveequalizersofreflectsisomorphisms--9ae08dc4bd1af8e9003f385d",
  "source": {
    "blob": "8104185abcb6483febc89bfb4f5325e4d2920e39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 370,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ae08dc4bd1af8e9003f385d6a1ba7f10f2d855359d0d1a9a9a59be7fb40f175",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d8b85d3c0b331470dc27732c2d9db26327e10e27bbafe6137927d80caca7535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comonadicOfHasPreservesCoreflexiveEqualizersOfReflectsIsomorphisms :
    ComonadicLeftAdjoint F where
  R := G
  adj := adj
  eqv := by
    have : ∀ (X : adj.toComonad.Coalgebra), IsIso ((comparisonAdjunction adj).counit.app X) := by
      intro X
      apply
        @isIso_of_reflects_iso _ _ _ _ _ _ _ (Comonad.forget adj.toComonad) ?_ _
      · change IsIso ((comparisonAdjunction adj).counit.app X).f
        rw [comparisonAdjunction_counit_f]
        exact (IsLimit.conePointUniqueUpToIso (beckEqualizer X)
          (counitLimitOfPreservesEqualizer X)).isIso_inv
    have : ∀ (Y : C), IsIso ((comparisonAdjunction adj).unit.app Y) := by
      intro Y
      rw [comparisonAdjunction_unit_app]
      change IsIso (IsLimit.conePointUniqueUpToIso _ ?_).inv
      infer_instance
      have : IsCoreflexivePair (G.map (F.map (adj.unit.app Y)))
          (adj.unit.app (G.obj (F.obj Y))) := by
        apply IsCoreflexivePair.mk' (G.map (adj.counit.app _)) _ _
        · rw [← G.map_comp, ← G.map_id]
          exact congr_arg G.map (adj.left_triangle_components Y)
        · rw [← G.map_id]
          simp
      apply @unitEqualizerOfCoreflectsEqualizer _ _ _ _ _ _ _ _ ?_
      apply reflectsLimit_of_reflectsIsomorphisms
    exact (comparisonAdjunction adj).toEquivalence.symm.isEquivalence_inverse

end CoreflexiveComonadicity

end

end Comonad

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comonadicity/Variant013aeca35a0683c039f8eb4b1832219d72b779220b44b9382b44042864bc5e3b.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8104185abcb6483febc89bfb4f5325e4d2920e39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
