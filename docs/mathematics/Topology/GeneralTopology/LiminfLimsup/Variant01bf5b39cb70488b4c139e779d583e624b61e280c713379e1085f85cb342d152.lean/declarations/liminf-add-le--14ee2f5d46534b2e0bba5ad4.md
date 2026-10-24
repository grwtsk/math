# liminf_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6de367e2-89bb-1de2-16c3-1993169c71d2",
  "kind": "lemma",
  "lexical_name": "liminf_add_le",
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
  "slug": "liminf-add-le--14ee2f5d46534b2e0bba5ad4",
  "source": {
    "blob": "a2c919c236b0e813da600bf58f59c96fd4d5da3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant01bf5b39cb70488b4c139e779d583e624b61e280c713379e1085f85cb342d152.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14ee2f5d46534b2e0bba5ad491ae022b07e4b8ab731625bc1b17a287c40bd32f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant01bf5b39cb70488b4c139e779d583e624b61e280c713379e1085f85cb342d152.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6de367e2-89bb-1de2-16c3-1993169c71d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma liminf_add_le (h₁ : IsBoundedUnder (fun x1 x2 ↦ x1 ≥ x2) f u := by isBoundedDefault)
    (h₂ : IsBoundedUnder (fun x1 x2 ↦ x1 ≤ x2) f u := by isBoundedDefault)
    (h₃ : IsBoundedUnder (fun x1 x2 ↦ x1 ≥ x2) f v := by isBoundedDefault)
    (h₄ : IsCoboundedUnder (fun x1 x2 ↦ x1 ≥ x2) f v := by isBoundedDefault) :
    liminf (u + v) f ≤ (limsup u f) + liminf v f := by
  have h := isCoboundedUnder_ge_add h₂ h₄
  have h' := isBoundedUnder_ge_add h₁ h₃
  refine le_add_of_forall_lt fun a a_u b b_v ↦ (liminf_le_iff h h').2 fun _ c_ab ↦ ?_
  refine ((frequently_lt_of_liminf_lt h₄ b_v).and_eventually
    (eventually_lt_of_limsup_lt a_u h₂)).mono fun _ ab_x ↦ ?_
  exact (add_lt_add ab_x.2 ab_x.1).trans c_ab

end LiminfLimsupAdd

section LiminfLimsupMul

open Filter Real

variable {f : Filter ι} {u v : ι → ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant01bf5b39cb70488b4c139e779d583e624b61e280c713379e1085f85cb342d152.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant01bf5b39cb70488b4c139e779d583e624b61e280c713379e1085f85cb342d152.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2c919c236b0e813da600bf58f59c96fd4d5da3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
