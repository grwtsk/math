# σ_comp_toMk₁_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30a28851-24cf-3811-c698-247bd31db53d",
  "kind": "lemma",
  "lexical_name": "σ_comp_toMk₁_of_le",
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
  "slug": "comp-tomk-of-le--1eac3637fb57b5c8a6bc9182",
  "source": {
    "blob": "5f053847778b0d9f796a6d7b264688a23541efa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant422db108832c39f22c8bb852b680740f0d2ce523dbf0d87f29f3cae08f03a820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eac3637fb57b5c8a6bc9182931c9e9cf5d0c58ac5d6d4fea3da61e81f257f04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant422db108832c39f22c8bb852b680740f0d2ce523dbf0d87f29f3cae08f03a820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30a28851-24cf-3811-c698-247bd31db53d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma σ_comp_toMk₁_of_le {n : ℕ} (i : Fin (n + 2)) (j : Fin (n + 1)) (h : i ≤ j.castSucc) :
    σ j ≫ toMk₁ i = toMk₁ i.castSucc := by
  refine ConcreteCategory.hom_ext _ _ (fun k ↦ ?_)
  change toMk₁ i (j.predAbove k) = _
  by_cases! hk : k < i
  · grind [Fin.castPred, Fin.predAbove_of_le_castSucc, toMk₁_of_castSucc_lt]
  · dsimp
    rw [toMk₁_of_le_castSucc, toMk₁_of_le_castSucc _ _ (by simpa)]
    by_cases hk' : k ≤ j.castSucc
    · rwa [Fin.predAbove_of_le_castSucc _ _ hk', Fin.castSucc_castPred]
    · grind [Fin.predAbove]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant422db108832c39f22c8bb852b680740f0d2ce523dbf0d87f29f3cae08f03a820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToMkOne/Variant422db108832c39f22c8bb852b680740f0d2ce523dbf0d87f29f3cae08f03a820.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f053847778b0d9f796a6d7b264688a23541efa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
