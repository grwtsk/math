# primesOverEquivPrimesOver_inertiagDeg_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:026f2c8d-5f6e-a725-b1e4-d90f20ca7d60",
  "kind": "theorem",
  "lexical_name": "primesOverEquivPrimesOver_inertiagDeg_eq",
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
  "slug": "primesoverequivprimesover-inertiagdeg-eq--d09c7b0f4da72e88c97a0b10",
  "source": {
    "blob": "0f08c6e38639fe855489c0a27bdaa86c3888d395",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 251,
    "path": "GRWTSK/Algebra/Extension/Variantd110e789acd6bc7c172ea98edfbad79668848aee2d39ae8c0f809697b6c7648b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d09c7b0f4da72e88c97a0b106de57ce2f8559d37c7eb65c798515db9d937d126",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variantd110e789acd6bc7c172ea98edfbad79668848aee2d39ae8c0f809697b6c7648b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:026f2c8d-5f6e-a725-b1e4-d90f20ca7d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primesOverEquivPrimesOver_inertiagDeg_eq [p.IsMaximal] (hp : p ≠ ⊥) (P : p.primesOver S) :
    (primesOverEquivPrimesOver p Rₚ Sₚ hp P : Ideal Sₚ).inertiaDeg Rₚ =
      P.val.inertiaDeg R := by
  have : NeZero p := ⟨hp⟩
  have : P.val.IsMaximal := Ring.DimensionLEOne.maximalOfPrime
    (ne_bot_of_mem_primesOver (NeZero.ne _) P.prop) inferInstance
  have : (P.1.map (algebraMap S Sₚ)).LiesOver (maximalIdeal Rₚ) := liesOver_map_of_liesOver p _ _ _
  exact inertiaDeg_map_eq_inertiaDeg p _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variantd110e789acd6bc7c172ea98edfbad79668848aee2d39ae8c0f809697b6c7648b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variantd110e789acd6bc7c172ea98edfbad79668848aee2d39ae8c0f809697b6c7648b.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f08c6e38639fe855489c0a27bdaa86c3888d395` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
