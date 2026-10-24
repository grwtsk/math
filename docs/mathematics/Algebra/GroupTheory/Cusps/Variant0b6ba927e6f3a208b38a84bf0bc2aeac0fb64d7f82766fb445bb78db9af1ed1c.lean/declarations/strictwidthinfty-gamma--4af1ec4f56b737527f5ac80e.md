# strictWidthInfty_Gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d434f9a7-3906-c963-020d-c22185ed7a2c",
  "kind": "lemma",
  "lexical_name": "strictWidthInfty_Gamma",
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
  "slug": "strictwidthinfty-gamma--4af1ec4f56b737527f5ac80e",
  "source": {
    "blob": "a084daf112d28557c50bc7c687fda6351835c458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 470,
    "path": "GRWTSK/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4af1ec4f56b737527f5ac80e6395b5fdccbad96fff6c283b650dc7d794c571fa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d434f9a7-3906-c963-020d-c22185ed7a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma strictWidthInfty_Gamma (N : ℕ) [NeZero N] :
    strictWidthInfty (Gamma N : Subgroup (GL (Fin 2) ℝ)) = N := by
  have hsp := strictPeriods_Gamma N
  rw [strictPeriods_eq_zmultiples_strictWidthInfty, Eq.comm,
    AddSubgroup.zmultiples_eq_zmultiples_iff
      (not_isOfFinAddOrder_of_isAddTorsionFree (NeZero.ne _))] at hsp
  grind [strictWidthInfty_nonneg, Nat.cast_nonneg]

end CongruenceSubgroup

end Width
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cusps/Variant0b6ba927e6f3a208b38a84bf0bc2aeac0fb64d7f82766fb445bb78db9af1ed1c.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a084daf112d28557c50bc7c687fda6351835c458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
