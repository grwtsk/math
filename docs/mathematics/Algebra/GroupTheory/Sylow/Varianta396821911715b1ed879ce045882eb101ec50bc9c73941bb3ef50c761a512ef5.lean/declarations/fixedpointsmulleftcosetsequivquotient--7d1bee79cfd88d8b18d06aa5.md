# fixedPointsMulLeftCosetsEquivQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd1493b3f9a657794b6bf436ec06658e36ff6cfcf73f4dc21a2978981d6bd4c9",
  "kind": "def",
  "lexical_name": "fixedPointsMulLeftCosetsEquivQuotient",
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
  "slug": "fixedpointsmulleftcosetsequivquotient--7d1bee79cfd88d8b18d06aa5",
  "source": {
    "blob": "6f6750c538e50bc8b80418211303f4b260632e22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 610,
    "line": 597,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d1bee79cfd88d8b18d06aa574d3e0e04d2168ea391a1a6a8bb281d763f35f9a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd1493b3f9a657794b6bf436ec06658e36ff6cfcf73f4dc21a2978981d6bd4c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 597–610.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fixedPointsMulLeftCosetsEquivQuotient (H : Subgroup G) [Finite (H : Set G)] :
    MulAction.fixedPoints H (G ⧸ H) ≃
      normalizer H ⧸ H.comap (normalizer (H : Set G)).subtype :=
  @subtypeQuotientEquivQuotientSubtype G (· ∈ normalizer H) (_) (_)
    (· ∈ MulAction.fixedPoints H (G ⧸ H))
    (fun _ => (@mem_fixedPoints_mul_left_cosets_iff_mem_normalizer _ _ _ ‹_› _).symm)
    (by
      intros
      unfold_projs
      rw [leftRel_apply (α := normalizer (H : Set G)), leftRel_apply]
      rfl)

/-- If `H` is a `p`-subgroup of `G`, then the index of `H` inside its normalizer is congruent
  mod `p` to the index of `H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Varianta396821911715b1ed879ce045882eb101ec50bc9c73941bb3ef50c761a512ef5.lean#L597).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f6750c538e50bc8b80418211303f4b260632e22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
