# subtypeRestr_symm_eqOn_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc82b52a-8cf0-2539-6982-9669bc8860f9",
  "kind": "theorem",
  "lexical_name": "subtypeRestr_symm_eqOn_of_le",
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
  "slug": "subtyperestr-symm-eqon-of-le--6a040e94fc5582d9e55ed4c5",
  "source": {
    "blob": "7081bfe57cfeb1b95e0f3e64abb3886e18892e27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a040e94fc5582d9e55ed4c501a88a1b9058f89e803f745db7bc8127f9037304",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc82b52a-8cf0-2539-6982-9669bc8860f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subtypeRestr_symm_eqOn_of_le {U V : Opens X} (hU : Nonempty U) (hV : Nonempty V)
    (hUV : U ≤ V) : EqOn (e.subtypeRestr hV).symm (Set.inclusion hUV ∘ (e.subtypeRestr hU).symm)
      (e.subtypeRestr hU).target := by
  set i := Set.inclusion hUV
  intro y hy
  dsimp [OpenPartialHomeomorph.subtypeRestr_def] at hy ⊢
  have hyV : e.symm y ∈ (V.openPartialHomeomorphSubtypeCoe hV).target := by
    rw [Opens.openPartialHomeomorphSubtypeCoe_target] at hy ⊢
    exact hUV hy.2
  refine (V.openPartialHomeomorphSubtypeCoe hV).injOn ?_ trivial ?_
  · simp
  · rw [(V.openPartialHomeomorphSubtypeCoe hV).right_inv hyV]
    change _ = U.openPartialHomeomorphSubtypeCoe hU _
    rw [(U.openPartialHomeomorphSubtypeCoe hU).right_inv hy.2]

end subtypeRestr

/-!
## Extending along an open embedding
-/
section lift_openEmbedding

variable {X X' Z : Type*} [TopologicalSpace X] [TopologicalSpace X'] [TopologicalSpace Z]
  [Nonempty Z] {f : X → X'}

/-- Extend an open partial homeomorphism `e : X → Z` to `X' → Z`, using an open embedding
`ι : X → X'`. On `ι(X)`, the extension is specified by `e`; its value elsewhere is arbitrary
(and uninteresting). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variantace8d9c2cf6341ae90d876fdd13aea8a2275b8c78e27eff8bb714208924fff13.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7081bfe57cfeb1b95e0f3e64abb3886e18892e27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
