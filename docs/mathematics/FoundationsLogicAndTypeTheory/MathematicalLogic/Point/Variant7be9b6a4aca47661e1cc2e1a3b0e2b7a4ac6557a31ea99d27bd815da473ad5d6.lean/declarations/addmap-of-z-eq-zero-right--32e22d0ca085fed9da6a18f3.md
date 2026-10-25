# addMap_of_Z_eq_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b7ace10-21da-173b-eb6a-da801b59ffa9",
  "kind": "lemma",
  "lexical_name": "addMap_of_Z_eq_zero_right",
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
  "slug": "addmap-of-z-eq-zero-right--32e22d0ca085fed9da6a18f3",
  "source": {
    "blob": "c7681bbc90d10f542a3dfb8c73ad6753106c52eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 318,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant7be9b6a4aca47661e1cc2e1a3b0e2b7a4ac6557a31ea99d27bd815da473ad5d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32e22d0ca085fed9da6a18f302ff34d2a6b47e44b7e41dc0097e49fe60f45728",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant7be9b6a4aca47661e1cc2e1a3b0e2b7a4ac6557a31ea99d27bd815da473ad5d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b7ace10-21da-173b-eb6a-da801b59ffa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma addMap_of_Z_eq_zero_right {P : PointClass F} {Q : Fin 3 → F} (hP : W.NonsingularLift P)
    (hQ : W.Nonsingular Q) (hQz : Q z = 0) : W.addMap P ⟦Q⟧ = P := by
  revert hP
  refine P.inductionOn (motive := fun P => _ → W.addMap P _ = P) fun P hP => ?_
  by_cases hPz : P z = 0
  · rw [addMap_eq, add_of_Z_eq_zero hP hQ hPz hQz,
      smul_eq _ <| (isUnit_Y_of_Z_eq_zero hP hPz).pow 4, Quotient.eq]
    exact Setoid.symm <| equiv_zero_of_Z_eq_zero hP hPz
  · rw [addMap_eq, add_of_Z_eq_zero_right hQ.left hPz hQz,
      smul_eq _ (((isUnit_Y_of_Z_eq_zero hQ hQz).pow 2).mul <| Ne.isUnit hPz).neg]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant7be9b6a4aca47661e1cc2e1a3b0e2b7a4ac6557a31ea99d27bd815da473ad5d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant7be9b6a4aca47661e1cc2e1a3b0e2b7a4ac6557a31ea99d27bd815da473ad5d6.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7681bbc90d10f542a3dfb8c73ad6753106c52eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
