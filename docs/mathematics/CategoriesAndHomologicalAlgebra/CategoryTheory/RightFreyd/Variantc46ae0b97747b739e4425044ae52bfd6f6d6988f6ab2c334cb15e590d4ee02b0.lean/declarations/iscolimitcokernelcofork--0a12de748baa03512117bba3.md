# isColimitCokernelCofork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a49728cf01814de815560c9a08518ced254fd3dfb1145525d3fed1a0dc5e23a0",
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
  "slug": "iscolimitcokernelcofork--0a12de748baa03512117bba3",
  "source": {
    "blob": "142748cdfd08042d7d344edf2ae5f4b5c87baf8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variantc46ae0b97747b739e4425044ae52bfd6f6d6988f6ab2c334cb15e590d4ee02b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a12de748baa03512117bba329ee53392a49bacce42f593435a92d0b58dd751c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variantc46ae0b97747b739e4425044ae52bfd6f6d6988f6ab2c334cb15e590d4ee02b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a49728cf01814de815560c9a08518ced254fd3dfb1145525d3fed1a0dc5e23a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–200.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variantc46ae0b97747b739e4425044ae52bfd6f6d6988f6ab2c334cb15e590d4ee02b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightFreyd/Variantc46ae0b97747b739e4425044ae52bfd6f6d6988f6ab2c334cb15e590d4ee02b0.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142748cdfd08042d7d344edf2ae5f4b5c87baf8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
