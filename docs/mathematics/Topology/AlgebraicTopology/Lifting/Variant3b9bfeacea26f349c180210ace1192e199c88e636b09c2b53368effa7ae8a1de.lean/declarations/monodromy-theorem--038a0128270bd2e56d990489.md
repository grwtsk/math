# monodromy_theorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:082d9994-0db6-592a-9bca-4e441320a74e",
  "kind": "theorem",
  "lexical_name": "monodromy_theorem",
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
  "slug": "monodromy-theorem--038a0128270bd2e56d990489",
  "source": {
    "blob": "2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 162,
    "path": "GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:038a0128270bd2e56d9904895c19875eca2a1e66613201749b0ab4829686241f",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:082d9994-0db6-592a-9bca-4e441320a74e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monodromy_theorem {γ₀ γ₁ : C(I, X)} (γ : γ₀.HomotopyRel γ₁ {0,1}) (Γ : I → C(I, E))
    (Γ_lifts : ∀ t s, p (Γ t s) = γ (t, s)) (Γ_0 : ∀ t, Γ t 0 = Γ 0 0) (t : I) :
    Γ t 1 = Γ 0 1 := by
  have := homeo.continuous_lift sep (.comp γ .prodSwap) (g := fun st ↦ Γ st.2 st.1) ?_ ?_ ?_
  · apply sep.const_of_comp homeo.isLocallyInjective (this.comp (.prodMk_right 1))
    intro t t'; change p (Γ _ _) = p (Γ _ _); simp_rw [Γ_lifts, γ.eq_fst _ (.inr rfl)]
  · ext; apply Γ_lifts
  · simp_rw [Γ_0]; exact continuous_const
  · exact fun t ↦ (Γ t).2

omit sep
open PathConnectedSpace (somePath) in
/-- A map `f` from a path-connected, locally path-connected space `A` to another space `X` lifts
  uniquely through a local homeomorphism `p : E → X` if for every path `γ` in `A`, the composed
  path `f ∘ γ` in `X` lifts to `E` with endpoint only dependent on the endpoint of `γ` and
  independent of the path chosen. In this theorem, we require that a specific point `a₀ : A` is
  lifted to a specific point `e₀ : E` over `a₀`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Lifting/Variant3b9bfeacea26f349c180210ace1192e199c88e636b09c2b53368effa7ae8a1de.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fad44e72ce62dfc5ab7ea4fc07a469842e5b8fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
