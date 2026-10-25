# Associated.prod'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd46aead-26db-2b84-69ad-096b1736a8e4",
  "kind": "theorem",
  "lexical_name": "Associated.prod'",
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
  "slug": "associated-prod--4d76b0309cc038faf064059f",
  "source": {
    "blob": "12d10c5c36aebccef77eea68bb6b7168e96a1b88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 256,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TacticAnalysis/Variantc592cdee2e445c86a861519f41abfc24a6b729024d3d7fa1eff580520b776807.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d76b0309cc038faf064059f10ca760c6fb98f14389d7ef09f303df18dc12454",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TacticAnalysis/Variantc592cdee2e445c86a861519f41abfc24a6b729024d3d7fa1eff580520b776807.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd46aead-26db-2b84-69ad-096b1736a8e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Associated.prod' {M : Type*} [CommMonoid M] {ι : Type*} (s : Finset ι) (f : ι → M)
    (g : ι → M) (h : ∀ i, i ∈ s → Associated (f i) (g i)) : Associated (∏ i ∈ s, f i) (∏ i ∈ s, g i) := by
  induction s using Finset.induction with
  | empty => grind [Associated.prod]
  | insert j s hjs IH =>
    classical
    convert_to Associated (∏ i ∈ insert j s, f i) (∏ i ∈ insert j s, g i)
    grind [Associated.mul_mul]

end mergeWithGrind

section replaceWithGrind

set_option linter.tacticAnalysis.terminalToGrind true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TacticAnalysis/Variantc592cdee2e445c86a861519f41abfc24a6b729024d3d7fa1eff580520b776807.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TacticAnalysis/Variantc592cdee2e445c86a861519f41abfc24a6b729024d3d7fa1eff580520b776807.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12d10c5c36aebccef77eea68bb6b7168e96a1b88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
