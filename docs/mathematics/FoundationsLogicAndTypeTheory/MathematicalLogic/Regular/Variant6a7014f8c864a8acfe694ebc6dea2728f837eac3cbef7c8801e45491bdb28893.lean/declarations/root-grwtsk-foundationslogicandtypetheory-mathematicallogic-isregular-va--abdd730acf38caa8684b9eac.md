# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsRegular.Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.BooleanAlgebra.ofRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:beb700ba1a720b653431cf0db418988e133e8ca289dcd3b12d3ccd5f0a3184bb",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsRegular.Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.BooleanAlgebra.ofRegular",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-isregular-va--abdd730acf38caa8684b9eac",
  "source": {
    "blob": "79dea55ae90aa5bcb96f12ec735a6b4272826e93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abdd730acf38caa8684b9eac1d5b52fd58d5d4b80313e399a292e20d3c99f7ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:beb700ba1a720b653431cf0db418988e133e8ca289dcd3b12d3ccd5f0a3184bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsRegular.Variant98a2b115208a22b93383422ef525c3eb38212d29c89a4306073d38e8336c45ca.BooleanAlgebra.ofRegular (h : ∀ a : α, IsRegular (a ⊔ aᶜ)) : BooleanAlgebra α :=
  have : ∀ a : α, IsCompl a aᶜ := fun a =>
    ⟨disjoint_compl_right,
      codisjoint_iff.2 <| by erw [← (h a), compl_sup, inf_compl_eq_bot, compl_bot]⟩
  { ‹HeytingAlgebra α›,
    GeneralizedHeytingAlgebra.toDistribLattice with
    himp_eq := fun a b =>
      eq_of_forall_le_iff fun c => le_himp_iff.trans (this _).le_sup_right_iff_inf_left_le.symm
    inf_compl_le_bot := fun a => (this _).1.le_bot
    top_le_sup_compl := fun a => (this _).2.top_le }
#align boolean_algebra.of_regular BooleanAlgebra.ofRegular

variable (α)

/-- The boolean algebra of Heyting regular elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant6a7014f8c864a8acfe694ebc6dea2728f837eac3cbef7c8801e45491bdb28893.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79dea55ae90aa5bcb96f12ec735a6b4272826e93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
