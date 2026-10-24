# uniformEquivPiComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22bd8f49533bbce2090ba51af47b55325f8b063b9f12adfe0ae10496276fa16c",
  "kind": "def",
  "lexical_name": "uniformEquivPiComm",
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
  "slug": "uniformequivpicomm--dd4e93ff0b23357c396677f3",
  "source": {
    "blob": "61908578d325fa0d2be8fbb6bc9f2676913a8b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 572,
    "line": 536,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd4e93ff0b23357c396677f3c805426711050f925bcacda03deb489bb2e92b77",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22bd8f49533bbce2090ba51af47b55325f8b063b9f12adfe0ae10496276fa16c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–572.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def uniformEquivPiComm : UniformEquiv (α →ᵤ ∀ i, δ i) (∀ i, α →ᵤ δ i) :=
  -- Denote `φ` this bijection. We want to show that
    -- `comap φ (Π i, 𝒰(α, δ i, uδ i)) = 𝒰(α, (Π i, δ i), (Π i, uδ i))`.
    -- But `Π i, uδ i` is defined as `⨅ i, comap (eval i) (uδ i)`, so we just have to apply
    -- `UniformFun.iInf_eq` and `UniformFun.comap_eq`, which leaves us to check
    -- that some square commutes.
    @Equiv.toUniformEquivOfUniformInducing
    _ _ 𝒰(α, ∀ i, δ i, Pi.uniformSpace δ)
    (@Pi.uniformSpace ι (fun i => α → δ i) fun i => 𝒰(α, δ i, _)) (Equiv.piComm _) $ by
      refine @UniformInducing.mk ?_ ?_ ?_ ?_ ?_ ?_
      change comap (Prod.map Function.swap Function.swap) _ = _
      rw [← uniformity_comap]
      congr
      unfold Pi.uniformSpace
      rw [UniformSpace.ofCoreEq_toCore, UniformSpace.ofCoreEq_toCore,
        UniformSpace.comap_iInf, UniformFun.iInf_eq]
      refine' iInf_congr fun i => _
      rw [← UniformSpace.comap_comap, UniformFun.comap_eq]
      rfl
#align uniform_fun.uniform_equiv_Pi_comm UniformFun.uniformEquivPiComm

-- Like in the previous lemma, the diagram actually commutes by definition
end UniformFun

namespace UniformOnFun

variable {α β : Type*} {γ ι : Type*}

variable {s s' : Set α} {x : α} {p : Filter ι} {g : ι → α}

-- mathport name: «expr𝒰( , , )»
local notation "𝒰(" α ", " β ", " u ")" => @UniformFun.uniformSpace α β u

/-- Basis sets for the uniformity of `𝔖`-convergence: for `S : Set α` and `V : Set (β × β)`,
`gen 𝔖 S V` is the set of pairs `(f, g)` of functions `α →ᵤ[𝔖] β` such that
`∀ x ∈ S, (f x, g x) ∈ V`. Note that the family `𝔖 : Set (Set α)` is only used to specify which
type alias of `α → β` to use here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergenceTopology/Variant8826f4cf2755f08815e3a35efae6340de764f275946e1aae24edfee4295ba416.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61908578d325fa0d2be8fbb6bc9f2676913a8b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
