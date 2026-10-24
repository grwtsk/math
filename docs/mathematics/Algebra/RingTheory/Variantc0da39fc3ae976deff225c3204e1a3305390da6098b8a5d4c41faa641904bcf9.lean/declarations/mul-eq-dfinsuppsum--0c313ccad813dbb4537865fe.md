# mul_eq_dfinsuppSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d239f71-8242-5a08-d120-283e70bcde7d",
  "kind": "theorem",
  "lexical_name": "mul_eq_dfinsuppSum",
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
  "slug": "mul-eq-dfinsuppsum--0c313ccad813dbb4537865fe",
  "source": {
    "blob": "fbc18a1a20551c9954c156e0c4d8cd2f94d2a29a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 289,
    "path": "GRWTSK/Algebra/Ring/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c313ccad813dbb4537865fe422e206fdad11f67ab45bdac2efcd4d0b7d3289a",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d239f71-8242-5a08-d120-283e70bcde7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_eq_dfinsuppSum [∀ (i : ι) (x : A i), Decidable (x ≠ 0)] (a a' : ⨁ i, A i) :
    a * a'
      = a.sum fun _ ai => a'.sum fun _ aj => DirectSum.of _ _ <| GradedMonoid.GMul.mul ai aj := by
  change mulHom _ a a' = _
  -- Porting note: I have no idea how the proof from ml3 worked it used to be
  -- simpa only [mul_hom, to_add_monoid, dfinsupp.lift_add_hom_apply, dfinsupp.sum_add_hom_apply,
  -- add_monoid_hom.dfinsupp_sum_apply, flip_apply, add_monoid_hom.dfinsupp_sum_add_hom_apply],
  rw [mulHom, toAddMonoid, DFinsupp.liftAddHom_apply]
  dsimp only [DirectSum]
  rw [DFinsupp.sumAddHom_apply, AddMonoidHom.dfinsuppSum_apply]
  apply congrArg _
  simp_rw [flip_apply]
  funext x
  -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
  erw [DFinsupp.sumAddHom_apply]
  simp only [gMulHom, AddMonoidHom.dfinsuppSum_apply, flip_apply, coe_comp, AddMonoidHom.coe_mk,
    ZeroHom.coe_mk, Function.comp_apply, AddMonoidHom.compHom_apply_apply]

@[deprecated (since := "2025-04-06")] alias mul_eq_dfinsupp_sum := mul_eq_dfinsuppSum

/-- A heavily unfolded version of the definition of multiplication -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingTheory/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ring/Variantc0da39fc3ae976deff225c3204e1a3305390da6098b8a5d4c41faa641904bcf9.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbc18a1a20551c9954c156e0c4d8cd2f94d2a29a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
