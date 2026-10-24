# preservesCokernelZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ac6310dfc5f0afa4c44cb7abd0d1279fdfcc0e9dea2fbea50923c292b8bbcc7",
  "kind": "instance",
  "lexical_name": "preservesCokernelZero",
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
  "slug": "preservescokernelzero--431be453a1b609a49275b07f",
  "source": {
    "blob": "4d96074629051a6dc2a35edb3943914704a86e70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 301,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:431be453a1b609a49275b07f8fb218655b5aa6a7a5a55aa85a19469475a5c31a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ac6310dfc5f0afa4c44cb7abd0d1279fdfcc0e9dea2fbea50923c292b8bbcc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance preservesCokernelZero :
    PreservesColimit (parallelPair (0 : X ⟶ Y) 0) G where
  preserves {c} hc := by
    have := CokernelCofork.IsColimit.isIso_π c hc rfl
    refine' (CokernelCofork.isColimitMapCoconeEquiv c G).symm _
    refine' IsColimit.ofIsoColimit (CokernelCofork.IsColimit.ofId _ (G.map_zero _ _)) _
    exact (Cofork.ext (G.mapIso (asIso (Cofork.π c))) (by simp))

variable {X Y}

/-- The kernel of a zero map is preserved by any functor which preserves zero morphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d96074629051a6dc2a35edb3943914704a86e70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
