# map_complexEmbedding_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32693e8b-11e5-fa0e-3900-8a591cd33f9d",
  "kind": "theorem",
  "lexical_name": "map_complexEmbedding_torsion",
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
  "slug": "map-complexembedding-torsion--9550bfc34d156e19b7da291f",
  "source": {
    "blob": "2b9ff98ad190e66c5ce3e5bf94536a8f1c905a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 228,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante44ef82a369ea30af8437ef3ab4744192ae8ddd1d6f1705ed8cc3585f83dabdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9550bfc34d156e19b7da291f3486ea2be12861b0af2414846d9c9238b49565d0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante44ef82a369ea30af8437ef3ab4744192ae8ddd1d6f1705ed8cc3585f83dabdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32693e8b-11e5-fa0e-3900-8a591cd33f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_complexEmbedding_torsion (φ : K →+* ℂ) :
    (torsion K).map (Units.complexEmbedding φ) = rootsOfUnity (torsionOrder K) ℂ := by
  apply Subgroup.eq_of_le_of_card_ge
  · rw [← rootsOfUnity_eq_torsion]
    exact map_rootsOfUnity _ (torsionOrder K)
  · let e := ((torsion K).equivMapOfInjective (Units.complexEmbedding φ)
      (Units.complexEmbedding_injective φ)).symm.toEquiv
    rw [Complex.card_rootsOfUnity, Nat.card_congr e, torsionOrder]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variante44ef82a369ea30af8437ef3ab4744192ae8ddd1d6f1705ed8cc3585f83dabdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variante44ef82a369ea30af8437ef3ab4744192ae8ddd1d6f1705ed8cc3585f83dabdd.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9ff98ad190e66c5ce3e5bf94536a8f1c905a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
