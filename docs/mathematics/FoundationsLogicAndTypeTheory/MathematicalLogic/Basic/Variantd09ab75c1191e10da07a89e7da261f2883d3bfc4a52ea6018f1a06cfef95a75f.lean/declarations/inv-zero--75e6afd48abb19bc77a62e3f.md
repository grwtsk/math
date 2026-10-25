# inv'Zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e602aaac505cac81fc9e14263c2181337fa9aa729b319e03548a40800135ff16",
  "kind": "def",
  "lexical_name": "inv'Zero",
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
  "slug": "inv-zero--75e6afd48abb19bc77a62e3f",
  "source": {
    "blob": "d41a4d07f35515cb99c37857f6dbf3b7b0bbd7e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 904,
    "line": 894,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75e6afd48abb19bc77a62e3fea8ccf78741156334da0b7ca7aade83ae893f459",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e602aaac505cac81fc9e14263c2181337fa9aa729b319e03548a40800135ff16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–904.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inv'Zero : inv' 0 ≡r 1 := by
  change mk _ _ _ _ ≡r 1
  refine' ⟨_, _, fun i => _, IsEmpty.elim _⟩
  · apply Equiv.equivPUnit (InvTy _ _ _)
  · apply Equiv.equivPEmpty (InvTy _ _ _)
  · -- Porting note: had to add `rfl`, because `simp` only uses the built-in `rfl`.
    simp; rfl
  · dsimp
    infer_instance
#align pgame.inv'_zero SetTheory.PGame.inv'Zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09ab75c1191e10da07a89e7da261f2883d3bfc4a52ea6018f1a06cfef95a75f.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d41a4d07f35515cb99c37857f6dbf3b7b0bbd7e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
