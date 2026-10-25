# predicate_subobject_inclusion_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e7b8476-c5c9-2a24-7c29-7e312f50ba44",
  "kind": "theorem",
  "lexical_name": "predicate_subobject_inclusion_equiv",
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
  "slug": "predicate-subobject-inclusion-equiv--b2f38234b9e7948e7234d249",
  "source": {
    "blob": "168b416b794a7ace175308b7dbeb133e459042b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 372,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2f38234b9e7948e7234d249d19dd2dc6f418dc581cfb47b18280f62e48c4c88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e7b8476-c5c9-2a24-7c29-7e312f50ba44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem predicate_subobject_inclusion_equiv
    {A : Type u}
    {P Q : A → Prop} :
    (∀ a, P a → Q a) ↔
      Nonempty
        (SubobjectLE
          (predicateSubobject P)
          (predicateSubobject Q)) := by
  constructor
  · intro h
    exact ⟨predicateSubobjectLE h⟩
  · intro h a hp
    cases h with
    | intro hle =>
        let x : {a : A // P a} := ⟨a, hp⟩
        have hx0 := congrFun hle.comm x
        change (hle.hom x).val = x.val at hx0
        have hq : Q ((hle.hom x).val) := (hle.hom x).property
        have hq_at_x : Q x.val := hx0 ▸ hq
        exact hq_at_x

end CategoricalLogic

/-
Equivalence of the two presentations.
-/

namespace DTT

open CategoricalLogic

/--
Certificate soundness in dependent type theory is equivalent to inclusion of
the certified subobject into the claim subobject.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168b416b794a7ace175308b7dbeb133e459042b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
