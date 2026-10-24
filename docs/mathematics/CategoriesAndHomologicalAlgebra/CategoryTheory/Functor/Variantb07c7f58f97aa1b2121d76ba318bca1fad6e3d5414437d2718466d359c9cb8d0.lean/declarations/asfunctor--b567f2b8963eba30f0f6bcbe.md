# asFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b1cc1c2566cbaf92fbf6ecb602313178968e06e9ebad748de7ff00d37a84db4",
  "kind": "def",
  "lexical_name": "asFunctor",
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
  "slug": "asfunctor--b567f2b8963eba30f0f6bcbe",
  "source": {
    "blob": "882c62723ba9546ba7b1e8555cf3e1e52db8781a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb07c7f58f97aa1b2121d76ba318bca1fad6e3d5414437d2718466d359c9cb8d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b567f2b8963eba30f0f6bcbef674caa35de2cdfe3e2c64db675ad56b4bc5ecb5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb07c7f58f97aa1b2121d76ba318bca1fad6e3d5414437d2718466d359c9cb8d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b1cc1c2566cbaf92fbf6ecb602313178968e06e9ebad748de7ff00d37a84db4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def asFunctor {T : Type*} [Category T] (C : HomologicalComplex (T ⥤ V) c) :
    T ⥤ HomologicalComplex V c where
  obj t :=
    { X := fun i => (C.X i).obj t
      d := fun i j => (C.d i j).app t
      d_comp_d' := fun i j k _ _ => by
        have := C.d_comp_d i j k
        rw [NatTrans.ext_iff, funext_iff] at this
        exact this t
      shape := fun i j h => by
        have := C.shape _ _ h
        rw [NatTrans.ext_iff, funext_iff] at this
        exact this t }
  map h :=
    { f := fun i => (C.X i).map h
      comm' := fun _ _ _ => NatTrans.naturality _ _ }
  map_id t := by
    ext i
    dsimp
    rw [(C.X i).map_id]
  map_comp h₁ h₂ := by
    ext i
    dsimp
    rw [Functor.map_comp]

-- TODO in fact, this is an equivalence of categories.
/-- The functorial version of `HomologicalComplex.asFunctor`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb07c7f58f97aa1b2121d76ba318bca1fad6e3d5414437d2718466d359c9cb8d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantb07c7f58f97aa1b2121d76ba318bca1fad6e3d5414437d2718466d359c9cb8d0.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `882c62723ba9546ba7b1e8555cf3e1e52db8781a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
