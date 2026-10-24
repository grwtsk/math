# isColimitCofanMapObjComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a610683cab261aaa357ab639e24655a9f89824665d91097f5e1fa1b5227a9ff",
  "kind": "def",
  "lexical_name": "isColimitCofanMapObjComp",
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
  "slug": "iscolimitcofanmapobjcomp--e1e010dc380f4ec1d776ed5d",
  "source": {
    "blob": "b8ca7a42b9e01c64e0fa3e8193e2e2765c35f9e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 462,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1e010dc380f4ec1d776ed5dec360fb370c42c22d152c98adf6e92dde4157a83",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a610683cab261aaa357ab639e24655a9f89824665d91097f5e1fa1b5227a9ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCofanMapObjComp :
    IsColimit (cofanMapObjComp X p q r hpqr k c c') :=
  mkCofanColimit _
    (fun s => Cofan.IsColimit.desc hc'
      (fun ⟨j, (hj : q j = k)⟩ => Cofan.IsColimit.desc (hc j hj)
        (fun ⟨i, (hi : p i = j)⟩ => s.inj ⟨i, by
          simp only [Set.mem_preimage, Set.mem_singleton_iff, ← hpqr, hi, hj]⟩)))
    (fun s ⟨i, (hi : r i = k)⟩ => by simp)
    (fun s m hm => by
      apply Cofan.IsColimit.hom_ext hc'
      rintro ⟨j, rfl : q j = k⟩
      apply Cofan.IsColimit.hom_ext (hc j rfl)
      rintro ⟨i, rfl : p i = j⟩
      dsimp
      rw [Cofan.IsColimit.fac, Cofan.IsColimit.fac, ← hm]
      dsimp
      rw [assoc])

include hpqr in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8ca7a42b9e01c64e0fa3e8193e2e2765c35f9e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
