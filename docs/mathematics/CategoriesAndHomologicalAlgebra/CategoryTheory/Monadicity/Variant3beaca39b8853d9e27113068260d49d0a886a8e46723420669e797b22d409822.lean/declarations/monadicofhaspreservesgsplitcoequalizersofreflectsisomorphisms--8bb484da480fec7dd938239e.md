# monadicOfHasPreservesGSplitCoequalizersOfReflectsIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5aa17f68d77a7b287592b5e2777b9cddcba47facece78a58c73ea01bd8d8c2b",
  "kind": "def",
  "lexical_name": "monadicOfHasPreservesGSplitCoequalizersOfReflectsIsomorphisms",
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
  "slug": "monadicofhaspreservesgsplitcoequalizersofreflectsisomorphisms--8bb484da480fec7dd938239e",
  "source": {
    "blob": "7b8202fd1ad00c1feb5d11a2fb627d9536257f97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 367,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bb484da480fec7dd938239e691c9e7aabef94628041744045d4c2d39fb371d6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5aa17f68d77a7b287592b5e2777b9cddcba47facece78a58c73ea01bd8d8c2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monadicOfHasPreservesGSplitCoequalizersOfReflectsIsomorphisms [G.ReflectsIsomorphisms]
    [HasCoequalizerOfIsSplitPair G] [PreservesColimitOfIsSplitPair G] :
    MonadicRightAdjoint G := by
  have : ReflectsColimitOfIsSplitPair G := ⟨fun f g _ => by
    have := HasCoequalizerOfIsSplitPair.out G f g
    apply reflectsColimit_of_reflectsIsomorphisms⟩
  apply monadicOfHasPreservesReflectsGSplitCoequalizers adj

end BeckMonadicity

section ReflexiveMonadicity

variable [HasReflexiveCoequalizers D] [G.ReflectsIsomorphisms]

-- Porting note: added these to replace parametric instances https://github.com/leanprover/lean4/issues/2311
-- [∀ ⦃A B⦄ (f g : A ⟶ B) [G.IsReflexivePair f g], PreservesColimit (parallelPair f g) G] :
/-- Typeclass expressing that for all reflexive pairs `f,g`, `G` preserves colimits of
`parallelPair f g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monadicity/Variant3beaca39b8853d9e27113068260d49d0a886a8e46723420669e797b22d409822.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8202fd1ad00c1feb5d11a2fb627d9536257f97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
