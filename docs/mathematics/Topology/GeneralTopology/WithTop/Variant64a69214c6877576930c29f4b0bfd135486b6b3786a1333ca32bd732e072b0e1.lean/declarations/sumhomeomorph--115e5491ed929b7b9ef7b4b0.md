# sumHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:967cbef25fb6ba27f5ad2f2f30c3e52053d65ee02eee039d753d63643d5cf913",
  "kind": "def",
  "lexical_name": "sumHomeomorph",
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
  "slug": "sumhomeomorph--115e5491ed929b7b9ef7b4b0",
  "source": {
    "blob": "88fae060bbd92d743989cd8960fc5432219a1a36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:115e5491ed929b7b9ef7b4b018236388b54360f68f7d084ab817a63630ea34a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:967cbef25fb6ba27f5ad2f2f30c3e52053d65ee02eee039d753d63643d5cf913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumHomeomorph [OrderTop ι] : WithTop ι ≃ₜ ι ⊕ Unit where
  toFun x := if h : x = ⊤ then Sum.inr () else Sum.inl x.untopA
  invFun x := match x with
    | Sum.inl i => (i : WithTop ι)
    | Sum.inr () => ⊤
  left_inv x := by cases x <;> simp
  right_inv x := by cases x <;> simp
  continuous_toFun := by
    have h_fr : frontier ({⊤} : Set (WithTop ι)) = ∅ := by
      simp only [frontier, Set.finite_singleton, Set.Finite.isClosed, IsClosed.closure_eq]
      suffices interior ({⊤} : Set (WithTop ι)) = {⊤} by simp [this]
      rw [interior_eq_iff_isOpen]
      have : {⊤} = Set.Ioi ((⊤ : ι) : WithTop ι) := by ext; simp
      rw [this]
      exact isOpen_Ioi
    refine continuous_if' (by simp [h_fr]) (by simp [h_fr]) (by simp) ?_
    exact Continuous.comp_continuousOn (by fun_prop) continuousOn_untopA
  continuous_invFun := continuous_sum_dom.mpr ⟨by fun_prop, by fun_prop⟩

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithTop/Variant64a69214c6877576930c29f4b0bfd135486b6b3786a1333ca32bd732e072b0e1.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fae060bbd92d743989cd8960fc5432219a1a36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
