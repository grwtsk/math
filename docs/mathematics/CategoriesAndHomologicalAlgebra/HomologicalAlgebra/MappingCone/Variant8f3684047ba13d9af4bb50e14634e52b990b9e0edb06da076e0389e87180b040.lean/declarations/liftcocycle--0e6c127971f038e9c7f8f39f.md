# liftCocycle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3df02163baa3a357b0197b5c7e41c6764b0e438f6affc6cf7f72f5d2a8e6eba2",
  "kind": "def",
  "lexical_name": "liftCocycle",
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
  "slug": "liftcocycle--0e6c127971f038e9c7f8f39f",
  "source": {
    "blob": "a045fef3dbb8a0197fae9896d3f4b41fb83029b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 490,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant8f3684047ba13d9af4bb50e14634e52b990b9e0edb06da076e0389e87180b040.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e6c127971f038e9c7f8f39f091dda2de78e444f6788e8a4a55346cd7c808604",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant8f3684047ba13d9af4bb50e14634e52b990b9e0edb06da076e0389e87180b040.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3df02163baa3a357b0197b5c7e41c6764b0e438f6affc6cf7f72f5d2a8e6eba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 490–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def liftCocycle {K : CochainComplex C ℤ} {n m : ℤ}
    (α : Cocycle K F m) (β : Cochain K G n) (h : n + 1 = m)
    (eq : δ n m β + α.1.comp (Cochain.ofHom φ) (add_zero m) = 0) :
    Cocycle K (mappingCone φ) n :=
  Cocycle.mk (liftCochain φ α β h) m h (by
    simp only [δ_liftCochain φ α β h (m + 1) rfl, eq,
      Cocycle.δ_eq_zero, Cochain.zero_comp, neg_zero, add_zero])

section

variable {K : CochainComplex C ℤ} (α : Cocycle K F 1) (β : Cochain K G 0)
    (eq : δ 0 1 β + α.1.comp (Cochain.ofHom φ) (add_zero 1) = 0)

/-- Given `φ : F ⟶ G`, this is the morphism `K ⟶ mappingCone φ` that is constructed
from a cocycle `α : Cochain K F 1` and a cochain `β : Cochain K G 0`
when a suitable cocycle relation is satisfied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant8f3684047ba13d9af4bb50e14634e52b990b9e0edb06da076e0389e87180b040.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/MappingCone/Variant8f3684047ba13d9af4bb50e14634e52b990b9e0edb06da076e0389e87180b040.lean#L490).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a045fef3dbb8a0197fae9896d3f4b41fb83029b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
