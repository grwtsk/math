# isColimitCokernelCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ba5eb94913ca8eda40f397bfd062a1117492f37b41640c0235a0557e96c05e4",
  "kind": "def",
  "lexical_name": "isColimitCokernelCofork",
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
  "slug": "iscolimitcokernelcofork--7af819cd4027d43fe7dab16d",
  "source": {
    "blob": "59a6de56144decf3e0a98657318ba581975a5d7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 198,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variant95a5ed4e2e996fd9dceb5d6ce5057a2f3f85906a32d8802dff2f707bbd3ce24a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7af819cd4027d43fe7dab16d0798132915a498c1d66a2309fe4a13ca492e9042",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variant95a5ed4e2e996fd9dceb5d6ce5057a2f3f85906a32d8802dff2f707bbd3ce24a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ba5eb94913ca8eda40f397bfd062a1117492f37b41640c0235a0557e96c05e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCokernelCofork : IsColimit (cokernelCofork f) :=
  CokernelCofork.IsColimit.ofπ' _
    (eq_of_rightHomotopy _ _ (Candidate.condition f))
    (fun g hg ↦ Nonempty.some (by
      obtain ⟨g, rfl⟩ := (quotient V).map_surjective g
      exact ⟨(quotient V).map (desc f g (homotopyOfEq _ _ hg)),
        by simp [← Functor.map_comp]⟩))

end Candidate

/-- The category `RightFreyd V` has all cokernels if `V` has binary biproducts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variant95a5ed4e2e996fd9dceb5d6ce5057a2f3f85906a32d8802dff2f707bbd3ce24a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variant95a5ed4e2e996fd9dceb5d6ce5057a2f3f85906a32d8802dff2f707bbd3ce24a.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59a6de56144decf3e0a98657318ba581975a5d7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
