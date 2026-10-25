# constantTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51f373e21d7060b3304d5c4f35a0d88864c89b0062f90b2ba5b259b19cb06f18",
  "kind": "def",
  "lexical_name": "constantTranslation",
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
  "slug": "constanttranslation--1428fa0bba5b442cc1d225e2",
  "source": {
    "blob": "a08e76759f66af50c4465ca60691b14335aca33f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 660,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1428fa0bba5b442cc1d225e269a64d6bd067996e518dd90c599c9a0efd79acd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51f373e21d7060b3304d5c4f35a0d88864c89b0062f90b2ba5b259b19cb06f18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constantTranslation : Translation incoherentPropertyTheory
    incoherentPropertyTheory incoherentVersion incoherentVersion
    c2Assumptions c2Assumptions c2Scope c2Scope where
  artifact := c2Version "constant-translation"
  lineage := .atomic (c2Version "constant-translation")
  lineageArtifactExact := rfl
  foundationInterpretation := .identity c2Foundation (c2Version "identity")
  mapObject := fun _ => false
  mapProposition := id
  assumptionTranslation := {
    artifact := c2Version "assumption-map"
    mapIndex := fun index => nomatch index.down
    propositionExact := fun index => nomatch index.down
  }
  targetAssumptionPartition := {
    classify := fun index => nomatch index.down
  }
  scopeTranslation := ⟨by intros; trivial⟩
  propositionScopeTranslation := by intros; trivial
  quantifierTransform := ⟨c2Version "quantifier-transform",
    c2Quantifiers, c2Quantifiers, rfl,
    .fullySpecified
      (by simp [c2Quantifiers, QuantifierProfile.HasUnspecified])
      (by simp [c2Quantifiers, QuantifierProfile.HasUnspecified])
      (.explicitlyNonInjective (false : Bool) (true : Bool)
        (by intro equality; cases equality) rfl)
      [c2Version "quantifier-compatibility"] (by simp)⟩
  quantifierSourceExact := rfl
  quantifierTargetExact := rfl
  informationLoss := [c2Loss]
  informationLossNonempty := by simp
  canonicality := []

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NegativeChecks/Variant48981f75fb4b51d4c07109bc62ab94feb8852740c94444a79f3db7ad42210744.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a08e76759f66af50c4465ca60691b14335aca33f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
