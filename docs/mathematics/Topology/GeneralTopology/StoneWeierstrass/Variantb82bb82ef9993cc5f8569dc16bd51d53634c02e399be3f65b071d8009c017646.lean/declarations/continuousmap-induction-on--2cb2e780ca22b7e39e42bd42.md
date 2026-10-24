# ContinuousMap.induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55ff306f-44ad-a4ec-f2f7-77d1fe6e0cea",
  "kind": "theorem",
  "lexical_name": "ContinuousMap.induction_on",
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
  "slug": "continuousmap-induction-on--2cb2e780ca22b7e39e42bd42",
  "source": {
    "blob": "9b73e58fe46e3815e64fd69235c49ca3e651237e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 467,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb2e780ca22b7e39e42bd429f2cf4576e91831a69b5486db59f290bcee0b771",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55ff306f-44ad-a4ec-f2f7-77d1fe6e0cea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMap.induction_on {𝕜 : Type*} [RCLike 𝕜] {s : Set 𝕜}
    {p : C(s, 𝕜) → Prop} (const : ∀ r, p (.const s r)) (id : p (.restrict s <| .id 𝕜))
    (star_id : p (star (.restrict s <| .id 𝕜)))
    (add : ∀ f g, p f → p g → p (f + g)) (mul : ∀ f g, p f → p g → p (f * g))
    (closure : (∀ f ∈ (polynomialFunctions s).starClosure, p f) → ∀ f, p f) (f : C(s, 𝕜)) :
    p f := by
  refine closure (fun f hf => ?_) f
  rw [polynomialFunctions.starClosure_eq_adjoin_X] at hf
  induction hf using Algebra.adjoin_induction with
  | mem f hf =>
    simp only [Set.mem_union, Set.mem_singleton_iff, Set.mem_star] at hf
    rw [star_eq_iff_star_eq, eq_comm (b := f)] at hf
    obtain (rfl | rfl) := hf
    all_goals simpa only [toContinuousMapOnAlgHom_apply, toContinuousMapOn_X_eq_restrict_id]
  | algebraMap r => exact const r
  | add _ _ _ _ hf hg => exact add _ _ hf hg
  | mul _ _ _ _ hf hg => exact mul _ _ hf hg

open Topology in
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variantb82bb82ef9993cc5f8569dc16bd51d53634c02e399be3f65b071d8009c017646.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b73e58fe46e3815e64fd69235c49ca3e651237e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
