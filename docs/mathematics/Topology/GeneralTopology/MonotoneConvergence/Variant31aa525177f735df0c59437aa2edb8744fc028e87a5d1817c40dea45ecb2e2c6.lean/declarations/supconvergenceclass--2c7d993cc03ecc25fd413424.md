# SupConvergenceClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1bc4ceff4f8baed97d1a5c5168150e96a5a70c25de0af141c2180a9510a8a5c",
  "kind": "class",
  "lexical_name": "SupConvergenceClass",
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
  "slug": "supconvergenceclass--2c7d993cc03ecc25fd413424",
  "source": {
    "blob": "2c22cc8ef325b3e42741fde7385057f89ffb15a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c7d993cc03ecc25fd41342469a8460ffd1d9b62449ff151aa76206c933c78ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1bc4ceff4f8baed97d1a5c5168150e96a5a70c25de0af141c2180a9510a8a5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SupConvergenceClass (α : Type*) [Preorder α] [TopologicalSpace α] : Prop where
  /-- proof that a monotone function tends to `𝓝 a` as `x → ∞` -/
  tendsto_coe_atTop_isLUB :
    ∀ (a : α) (s : Set α), IsLUB s a → Tendsto ((↑) : s → α) atTop (𝓝 a)

/-- We say that `α` is an `InfConvergenceClass` if the following holds. Let `f : ι → α` be a
monotone function, let `a : α` be a greatest lower bound of `Set.range f`. Then `f x` tends to `𝓝 a`
as `x → -∞` (formally, at the filter `Filter.atBot`). We require this for `ι = (s : Set α)`,
`f = (↑)` in the definition, then prove it for any `f` in `tendsto_atBot_isGLB`.

This property holds for linear orders with order topology as well as their products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant31aa525177f735df0c59437aa2edb8744fc028e87a5d1817c40dea45ecb2e2c6.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c22cc8ef325b3e42741fde7385057f89ffb15a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
