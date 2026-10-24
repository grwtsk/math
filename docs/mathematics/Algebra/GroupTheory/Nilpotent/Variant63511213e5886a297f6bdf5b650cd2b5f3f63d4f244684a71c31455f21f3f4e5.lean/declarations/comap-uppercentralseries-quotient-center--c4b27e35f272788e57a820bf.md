# comap_upperCentralSeries_quotient_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c34652c-27f0-19fc-9459-bf960027d297",
  "kind": "theorem",
  "lexical_name": "comap_upperCentralSeries_quotient_center",
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
  "slug": "comap-uppercentralseries-quotient-center--c4b27e35f272788e57a820bf",
  "source": {
    "blob": "30c59694ffb89b9851d8498640ef653bd9c59778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 867,
    "line": 844,
    "path": "GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4b27e35f272788e57a820bf09e37420744b9d680567482dc884134e8b4ceb02",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c34652c-27f0-19fc-9459-bf960027d297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 844–867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_upperCentralSeries_quotient_center (n : ℕ) :
    comap (mk' (center G)) (upperCentralSeries (G ⧸ center G) n) = upperCentralSeries G n.succ := by
  induction n with
  | zero =>
    simp only [upperCentralSeries_zero, MonoidHom.comap_bot, ker_mk',
      (upperCentralSeries_one G).symm]
  | succ n ih =>
    let Hn := upperCentralSeries (G ⧸ center G) n
    calc
      comap (mk' (center G)) (upperCentralSeriesStep Hn) =
          comap (mk' (center G)) (comap (mk' Hn) (center ((G ⧸ center G) ⧸ Hn))) := by
        rw [upperCentralSeriesStep_eq_comap_center]
      _ = comap (mk' (comap (mk' (center G)) Hn)) (center (G ⧸ comap (mk' (center G)) Hn)) :=
        QuotientGroup.comap_comap_center
      _ = comap (mk' (upperCentralSeries G n.succ)) (center (G ⧸ upperCentralSeries G n.succ)) :=
        (comap_center_subst ih)
      _ = upperCentralSeriesStep (upperCentralSeries G n.succ) :=
        symm (upperCentralSeriesStep_eq_comap_center _)

end Subgroup

namespace Group

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Nilpotent/Variant63511213e5886a297f6bdf5b650cd2b5f3f63d4f244684a71c31455f21f3f4e5.lean#L844).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30c59694ffb89b9851d8498640ef653bd9c59778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
