# norm_nonneg'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9aae98d6-e3ea-9211-7b31-73e56e1f5bfa",
  "kind": "theorem",
  "lexical_name": "norm_nonneg'",
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
  "slug": "norm-nonneg--f5755dc54095e6ec221de675",
  "source": {
    "blob": "a059e9acb7fff69b51af64de315d65f32b67871d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 402,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5755dc54095e6ec221de675a7f50b282707d556e3c73494c3aee2e87d864995",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aae98d6-e3ea-9211-7b31-73e56e1f5bfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_nonneg' (f : lp E p) : 0 ≤ ‖f‖ := by
  rcases p.trichotomy with (rfl | rfl | hp)
  · simp [lp.norm_eq_card_dsupport f]
  · rcases isEmpty_or_nonempty α with _i | _i
    · rw [lp.norm_eq_ciSup]
      simp [Real.iSup_of_isEmpty]
    inhabit α
    exact (norm_nonneg (f default)).trans ((lp.isLUB_norm f).1 ⟨default, rfl⟩)
  · rw [lp.norm_eq_tsum_rpow hp f]
    refine Real.rpow_nonneg (tsum_nonneg ?_) _
    exact fun i => Real.rpow_nonneg (norm_nonneg _) _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a059e9acb7fff69b51af64de315d65f32b67871d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
