# isStrictWeakOrder_of_isTotalPreorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "97052263964de81095f36bdb7e243bdc12707e61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 434,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ec9ab22df1b208214efd76b30b2ac0928a863b9839701e84ab4161d76f89f89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8735ee4c-9b9c-c043-5bd2-af9bc1a8ffa1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36a6387e-0645-7469-bc41-c242b95cf177",
  "kind": "theorem",
  "lexical_name": "isStrictWeakOrder_of_isTotalPreorder",
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
  "slug": "isstrictweakorder-of-istotalpreorder--3c009595685dd72fc1538342",
  "source": {
    "blob": "97052263964de81095f36bdb7e243bdc12707e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 434,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant3ec9ab22df1b208214efd76b30b2ac0928a863b9839701e84ab4161d76f89f89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c009595685dd72fc15383422f8c5ec4cbead14e12083cfee24d997c63ba31dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant3ec9ab22df1b208214efd76b30b2ac0928a863b9839701e84ab4161d76f89f89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36a6387e-0645-7469-bc41-c242b95cf177`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isStrictWeakOrder_of_isTotalPreorder {α : Type u} {le : α → α → Prop} {lt : α → α → Prop}
    [DecidableRel le] [IsTotalPreorder α le] (h : ∀ a b, lt a b ↔ ¬le b a) :
    IsStrictWeakOrder α lt :=
  { trans := fun a b c hab hbc =>
      have nba : ¬le b a := Iff.mp (h _ _) hab
      have ncb : ¬le c b := Iff.mp (h _ _) hbc
      have hab : le a b := Or.resolve_left (total_of le b a) nba
      have nca : ¬le c a := fun hca : le c a =>
        have hcb : le c b := trans_of le hca hab
        absurd hcb ncb
      Iff.mpr (h _ _) nca
    irrefl := fun a hlt => absurd (refl_of le a) (Iff.mp (h _ _) hlt)
    incomp_trans := fun a b c ⟨nab, nba⟩ ⟨nbc, ncb⟩ =>
      have hba : le b a := Decidable.of_not_not (Iff.mp (not_congr (h _ _)) nab)
      have hab : le a b := Decidable.of_not_not (Iff.mp (not_congr (h _ _)) nba)
      have hcb : le c b := Decidable.of_not_not (Iff.mp (not_congr (h _ _)) nbc)
      have hbc : le b c := Decidable.of_not_not (Iff.mp (not_congr (h _ _)) ncb)
      have hac : le a c := trans_of le hab hbc
      have hca : le c a := trans_of le hcb hba
      And.intro (fun n => absurd hca (Iff.mp (h _ _) n)) fun n => absurd hac (Iff.mp (h _ _) n) }
#align is_strict_weak_order_of_is_total_preorder isStrictWeakOrder_of_isTotalPreorder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant3ec9ab22df1b208214efd76b30b2ac0928a863b9839701e84ab4161d76f89f89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Classes/Variant3ec9ab22df1b208214efd76b30b2ac0928a863b9839701e84ab4161d76f89f89.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97052263964de81095f36bdb7e243bdc12707e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
