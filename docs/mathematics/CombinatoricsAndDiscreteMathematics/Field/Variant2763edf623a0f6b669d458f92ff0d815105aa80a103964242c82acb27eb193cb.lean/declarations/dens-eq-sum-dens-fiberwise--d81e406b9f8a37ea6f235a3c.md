# dens_eq_sum_dens_fiberwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6fdb9f3-31a9-04bd-3330-04889bdf0e13",
  "kind": "lemma",
  "lexical_name": "dens_eq_sum_dens_fiberwise",
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
  "slug": "dens-eq-sum-dens-fiberwise--d81e406b9f8a37ea6f235a3c",
  "source": {
    "blob": "5b6aad39392837218086aacd562de5f504d5fc08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81e406b9f8a37ea6f235a3c31c010fd76f2a945b6356ea2cfa07fd4650f8b45",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6fdb9f3-31a9-04bd-3330-04889bdf0e13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dens_eq_sum_dens_fiberwise [DecidableEq α] {f : β → α} {t : Finset β}
    (h : t.toSet.MapsTo f s) : t.dens = ∑ a ∈ s, {b ∈ t | f b = a}.dens := by
  simp [dens, ← sum_div, card_eq_sum_card_fiberwise h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Field/Variant2763edf623a0f6b669d458f92ff0d815105aa80a103964242c82acb27eb193cb.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b6aad39392837218086aacd562de5f504d5fc08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
