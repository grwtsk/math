# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsRegular.Variant653b5780f8159b2a5fc014b32a8c7f463147e6df7e5d48f2bc0c7e8218cc90f0.BooleanAlgebra.ofRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11fc966db1648be7854c650482dfaa7891259eae39c4ee7cc4cb29f2c8d313f4",
  "kind": "abbrev",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsRegular.Variant653b5780f8159b2a5fc014b32a8c7f463147e6df7e5d48f2bc0c7e8218cc90f0.BooleanAlgebra.ofRegular",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-isregular-va--5ebd8e83fe69447f97d022b8",
  "source": {
    "blob": "16dc17b42bbd55fd1af656adfc2eff471956af87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant5b3f38587231bc3aaed854fdea1c41f0aebbd9ccee06a1580dda848872a57bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ebd8e83fe69447f97d022b835800cee6de8843feb417db17a9aa9053c725d20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant5b3f38587231bc3aaed854fdea1c41f0aebbd9ccee06a1580dda848872a57bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11fc966db1648be7854c650482dfaa7891259eae39c4ee7cc4cb29f2c8d313f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsRegular.Variant653b5780f8159b2a5fc014b32a8c7f463147e6df7e5d48f2bc0c7e8218cc90f0.BooleanAlgebra.ofRegular (h : ∀ a : α, IsRegular (a ⊔ aᶜ)) : BooleanAlgebra α :=
  have : ∀ a : α, IsCompl a aᶜ := fun a =>
    ⟨disjoint_compl_right,
      codisjoint_iff.2 <| by rw [← (h a), compl_sup, inf_compl_eq_bot, compl_bot]⟩
  { ‹HeytingAlgebra α›,
    GeneralizedHeytingAlgebra.toDistribLattice with
    himp_eq := fun _ _ =>
      eq_of_forall_le_iff fun _ => le_himp_iff.trans (this _).le_sup_right_iff_inf_left_le.symm
    inf_compl_le_bot := fun _ => (this _).1.le_bot
    top_le_sup_compl := fun _ => (this _).2.top_le }

variable (α)

/-- The boolean algebra of Heyting regular elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant5b3f38587231bc3aaed854fdea1c41f0aebbd9ccee06a1580dda848872a57bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant5b3f38587231bc3aaed854fdea1c41f0aebbd9ccee06a1580dda848872a57bdf.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16dc17b42bbd55fd1af656adfc2eff471956af87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
