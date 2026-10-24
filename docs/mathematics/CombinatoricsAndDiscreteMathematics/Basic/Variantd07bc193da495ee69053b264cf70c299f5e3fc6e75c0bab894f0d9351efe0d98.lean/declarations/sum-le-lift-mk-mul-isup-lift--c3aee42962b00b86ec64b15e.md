# sum_le_lift_mk_mul_iSup_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b8f3978-572e-91f6-6c94-02759bbde45c",
  "kind": "theorem",
  "lexical_name": "sum_le_lift_mk_mul_iSup_lift",
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
  "slug": "sum-le-lift-mk-mul-isup-lift--c3aee42962b00b86ec64b15e",
  "source": {
    "blob": "4f0c8024cbf901ea605dc0a44b8a89e5cea91008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd07bc193da495ee69053b264cf70c299f5e3fc6e75c0bab894f0d9351efe0d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3aee42962b00b86ec64b15e2ba18c0e5691e95842a3e0d535987fa5f5e70ad7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd07bc193da495ee69053b264cf70c299f5e3fc6e75c0bab894f0d9351efe0d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b8f3978-572e-91f6-6c94-02759bbde45c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_le_lift_mk_mul_iSup_lift {ι : Type u} (f : ι → Cardinal.{v}) :
    sum f ≤ lift #ι * ⨆ i, lift (f i) := by
  rw [← (sum f).lift_id, lift_sum, ← lift_umax.{u, v}, ← (⨆ i, lift (f i)).lift_id,
    lift_umax.{max v u, u}, ← sum_const]
  refine sum_le_sum _ _ fun i => ?_
  rw [lift_umax.{v, u}]
  exact le_ciSup bddAbove_of_small i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantd07bc193da495ee69053b264cf70c299f5e3fc6e75c0bab894f0d9351efe0d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd07bc193da495ee69053b264cf70c299f5e3fc6e75c0bab894f0d9351efe0d98.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f0c8024cbf901ea605dc0a44b8a89e5cea91008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
