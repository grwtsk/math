# Cofork.IsColimit.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0f715b61831a4e5bd4c992262b1efd9a63705505a59729069ba85d9ca681581",
  "kind": "def",
  "lexical_name": "Cofork.IsColimit.mk",
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
  "slug": "cofork-iscolimit-mk--964915b04b5a508631d509bb",
  "source": {
    "blob": "6189c7e47c707029cc16c2f3b2a719a43a9052c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 453,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant6b4a90bcae1f951864f9d97e6b94b29777317b992c3354ebebb4456c25307596.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:964915b04b5a508631d509bb97db4a75d0e25333933d254a9334b027614cc2f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant6b4a90bcae1f951864f9d97e6b94b29777317b992c3354ebebb4456c25307596.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0f715b61831a4e5bd4c992262b1efd9a63705505a59729069ba85d9ca681581`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cofork.IsColimit.mk (t : Cofork f g) (desc : ∀ s : Cofork f g, t.pt ⟶ s.pt)
    (fac : ∀ s : Cofork f g, Cofork.π t ≫ desc s = Cofork.π s)
    (uniq : ∀ (s : Cofork f g) (m : t.pt ⟶ s.pt) (_ : t.π ≫ m = s.π), m = desc s) : IsColimit t :=
  { desc
    fac := fun s j =>
      WalkingParallelPair.casesOn j (by erw [← s.w left, ← t.w left, Category.assoc, fac]; rfl)
        (fac s)
    uniq := by aesop }

/-- This is another convenient method to verify that a fork is a limit cone. It
    only asks for a proof of facts that carry any mathematical content, and allows access to the
    same `s` for all parts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant6b4a90bcae1f951864f9d97e6b94b29777317b992c3354ebebb4456c25307596.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant6b4a90bcae1f951864f9d97e6b94b29777317b992c3354ebebb4456c25307596.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6189c7e47c707029cc16c2f3b2a719a43a9052c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
