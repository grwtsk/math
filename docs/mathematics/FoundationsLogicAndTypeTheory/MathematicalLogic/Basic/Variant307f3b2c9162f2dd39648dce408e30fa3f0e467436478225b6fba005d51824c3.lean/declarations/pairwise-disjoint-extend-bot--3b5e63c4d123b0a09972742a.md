# Pairwise.disjoint_extend_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cdc87e5-17a0-01b9-19d4-e30ddabdfb56",
  "kind": "theorem",
  "lexical_name": "Pairwise.disjoint_extend_bot",
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
  "slug": "pairwise-disjoint-extend-bot--3b5e63c4d123b0a09972742a",
  "source": {
    "blob": "6f583ba9677addb142c048029b130494d647a92e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant307f3b2c9162f2dd39648dce408e30fa3f0e467436478225b6fba005d51824c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b5e63c4d123b0a09972742a5e0d7996719a09c51485346ae8f0fa2943f9137b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant307f3b2c9162f2dd39648dce408e30fa3f0e467436478225b6fba005d51824c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cdc87e5-17a0-01b9-19d4-e30ddabdfb56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pairwise.disjoint_extend_bot [PartialOrder γ] [OrderBot γ]
    {e : α → β} {f : α → γ} (hf : Pairwise (Disjoint on f)) (he : FactorsThrough f e) :
    Pairwise (Disjoint on extend e f ⊥) := by
  intro b₁ b₂ hne
  rcases em (∃ a₁, e a₁ = b₁) with ⟨a₁, rfl⟩ | hb₁
  · rcases em (∃ a₂, e a₂ = b₂) with ⟨a₂, rfl⟩ | hb₂
    · simpa only [onFun, he.extend_apply] using! hf (ne_of_apply_ne e hne)
    · simpa only [onFun, extend_apply' _ _ _ hb₂] using! disjoint_bot_right
  · simpa only [onFun, extend_apply' _ _ _ hb₁] using! disjoint_bot_left

namespace Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant307f3b2c9162f2dd39648dce408e30fa3f0e467436478225b6fba005d51824c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant307f3b2c9162f2dd39648dce408e30fa3f0e467436478225b6fba005d51824c3.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f583ba9677addb142c048029b130494d647a92e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
