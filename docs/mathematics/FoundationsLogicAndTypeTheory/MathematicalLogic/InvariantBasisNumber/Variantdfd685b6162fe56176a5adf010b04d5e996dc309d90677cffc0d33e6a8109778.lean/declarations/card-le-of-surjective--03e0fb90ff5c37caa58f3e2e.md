# card_le_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e15a850-e37d-3403-1e03-c446497a52b1",
  "kind": "theorem",
  "lexical_name": "card_le_of_surjective",
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
  "slug": "card-le-of-surjective--03e0fb90ff5c37caa58f3e2e",
  "source": {
    "blob": "5440521e91d9736dddb16a72c02e4565a090982e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 144,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03e0fb90ff5c37caa58f3e2eac4b2fed2c1ef32cc74547e7a3c707d56a89a3b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e15a850-e37d-3403-1e03-c446497a52b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_of_surjective [RankCondition R] {α β : Type*} [Fintype α] [Fintype β]
    (f : (α → R) →ₗ[R] β → R) (i : Surjective f) : Fintype.card β ≤ Fintype.card α := by
  let P := LinearEquiv.funCongrLeft R R (Fintype.equivFin α)
  let Q := LinearEquiv.funCongrLeft R R (Fintype.equivFin β)
  exact
    le_of_fin_surjective R ((Q.symm.toLinearMap.comp f).comp P.toLinearMap)
      (((LinearEquiv.symm Q).surjective.comp i).comp (LinearEquiv.surjective P))
#align card_le_of_surjective card_le_of_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvariantBasisNumber/Variantdfd685b6162fe56176a5adf010b04d5e996dc309d90677cffc0d33e6a8109778.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5440521e91d9736dddb16a72c02e4565a090982e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
