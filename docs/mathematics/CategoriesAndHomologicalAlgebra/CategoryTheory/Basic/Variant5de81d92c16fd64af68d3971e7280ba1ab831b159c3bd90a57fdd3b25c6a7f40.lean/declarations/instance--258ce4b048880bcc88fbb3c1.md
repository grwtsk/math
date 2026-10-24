# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1175e467841432f6c553fecfa0e218dc59b27c07e2c71051304831b0a665453",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--258ce4b048880bcc88fbb3c1",
  "source": {
    "blob": "94bea212340b01cdde85464312e04782578303b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 366,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:258ce4b048880bcc88fbb3c1973855c668ff78a9896b7faf353dcd19e6882a59",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1175e467841432f6c553fecfa0e218dc59b27c07e2c71051304831b0a665453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (project f).Monoidal :=
  Functor.CoreMonoidal.toMonoidal
    { εIso := Iso.refl _
      μIso := fun _ _ ↦ Iso.refl _
  -- Porting note: `μIso_hom_natural_left` was proved in mathlib3 by tidy, using induction.
  -- We probably don't expect `aesop_cat` to handle this yet, see https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/Aesop.20and.20cases
  -- In any case I don't understand why we need to specify `using Quotient.recOn`.
      μIso_hom_natural_left := fun f _ => by
        induction f using Quotient.recOn
        all_goals aesop
      μIso_hom_natural_right := fun _ f => by
        induction f using Quotient.recOn
        all_goals aesop }

end Functor

end

end FreeMonoidalCategory

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5de81d92c16fd64af68d3971e7280ba1ab831b159c3bd90a57fdd3b25c6a7f40.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94bea212340b01cdde85464312e04782578303b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
