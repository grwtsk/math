# sum_rpow_le_of_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66612e37-8c0b-d2e7-eba7-60fe558eedf7",
  "kind": "theorem",
  "lexical_name": "sum_rpow_le_of_tendsto",
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
  "slug": "sum-rpow-le-of-tendsto--f6e2a1957c00c9197f009d5f",
  "source": {
    "blob": "a059e9acb7fff69b51af64de315d65f32b67871d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1142,
    "line": 1124,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6e2a1957c00c9197f009d5fd645786e7bc771d3b70730eb8c9db0c77446b744",
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

Occurrence: `result:66612e37-8c0b-d2e7-eba7-60fe558eedf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1124–1142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_rpow_le_of_tendsto (hp : p ≠ ∞) {C : ℝ} {F : ι → lp E p} (hCF : ∀ᶠ k in l, ‖F k‖ ≤ C)
    {f : ∀ a, E a} (hf : Tendsto (id fun i => F i : ι → ∀ a, E a) l (𝓝 f)) (s : Finset α) :
    ∑ i ∈ s, ‖f i‖ ^ p.toReal ≤ C ^ p.toReal := by
  have hp' : p ≠ 0 := (zero_lt_one.trans_le _i.elim).ne'
  have hp'' : 0 < p.toReal := ENNReal.toReal_pos hp' hp
  let G : (∀ a, E a) → ℝ := fun f => ∑ a ∈ s, ‖f a‖ ^ p.toReal
  have hG : Continuous G := by
    refine continuous_finset_sum s ?_
    intro a _
    have : Continuous fun f : ∀ a, E a => f a := continuous_apply a
    exact this.norm.rpow_const fun _ => Or.inr hp''.le
  refine le_of_tendsto (hG.continuousAt.tendsto.comp hf) ?_
  refine hCF.mono ?_
  intro k hCFk
  refine (lp.sum_rpow_le_norm_rpow hp'' (F k) s).trans ?_
  gcongr

/-- "Semicontinuity of the `lp` norm": If all sufficiently large elements of a sequence in `lp E p`
have `lp` norm `≤ C`, then the pointwise limit, if it exists, also has `lp` norm `≤ C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant8544627384c45c1eb24317e7082a611466edc4b2dfc1f62ec014f838cc3bee4c.lean#L1124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a059e9acb7fff69b51af64de315d65f32b67871d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
