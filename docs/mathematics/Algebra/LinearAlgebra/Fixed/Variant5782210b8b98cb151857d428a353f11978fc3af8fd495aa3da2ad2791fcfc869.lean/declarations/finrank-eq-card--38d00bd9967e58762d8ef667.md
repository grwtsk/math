# finrank_eq_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86e5e1c6-0751-118c-6835-1b2e118c341d",
  "kind": "theorem",
  "lexical_name": "finrank_eq_card",
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
  "slug": "finrank-eq-card--38d00bd9967e58762d8ef667",
  "source": {
    "blob": "2b281c48b243c545fd0fb30be71adfa2e9dea9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 350,
    "path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38d00bd9967e58762d8ef6674c2d59ffbe5833e8b7b12168852156ba0e146162",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86e5e1c6-0751-118c-6835-1b2e118c341d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_eq_card (G : Type u) (F : Type v) [Group G] [Field F] [Fintype G]
    [MulSemiringAction G F] [FaithfulSMul G F] :
    finrank (FixedPoints.subfield G F) F = Fintype.card G :=
  le_antisymm (FixedPoints.finrank_le_card G F) <|
    calc
      Fintype.card G ≤ Fintype.card (F →ₐ[FixedPoints.subfield G F] F) :=
        Fintype.card_le_of_injective _ (MulSemiringAction.toAlgHom_injective _ F)
      _ ≤ finrank F (F →ₗ[FixedPoints.subfield G F] F) := (finrank_algHom (subfield G F) F)
      _ = finrank (FixedPoints.subfield G F) F := finrank_linear_map' _ _ _
#align fixed_points.finrank_eq_card FixedPoints.finrank_eq_card

/-- `MulSemiringAction.toAlgHom` is bijective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Fixed/Variant5782210b8b98cb151857d428a353f11978fc3af8fd495aa3da2ad2791fcfc869.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b281c48b243c545fd0fb30be71adfa2e9dea9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
