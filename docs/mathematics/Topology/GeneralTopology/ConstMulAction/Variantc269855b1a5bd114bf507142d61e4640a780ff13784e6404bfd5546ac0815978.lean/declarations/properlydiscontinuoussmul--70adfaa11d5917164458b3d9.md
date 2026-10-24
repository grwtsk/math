# ProperlyDiscontinuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50e2e858c1bab345ce019f7e6801cda093c39fbe95b0e00928fc1c50cc04513b",
  "kind": "class",
  "lexical_name": "ProperlyDiscontinuousSMul",
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
  "slug": "properlydiscontinuoussmul--70adfaa11d5917164458b3d9",
  "source": {
    "blob": "24f79023a19e8fd27560899f833027994b05cfcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 428,
    "path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantc269855b1a5bd114bf507142d61e4640a780ff13784e6404bfd5546ac0815978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:70adfaa11d5917164458b3d9da19817bc54c7b45375e2043c9bd43026fc90625",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstMulAction/Variantc269855b1a5bd114bf507142d61e4640a780ff13784e6404bfd5546ac0815978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50e2e858c1bab345ce019f7e6801cda093c39fbe95b0e00928fc1c50cc04513b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ProperlyDiscontinuousSMul (Γ : Type*) (T : Type*) [TopologicalSpace T] [SMul Γ T] :
    Prop where
  /-- Given two compact sets `K` and `L`, `γ • K ∩ L` is nonempty for finitely many `γ`. -/
  finite_disjoint_inter_image :
    ∀ {K L : Set T}, IsCompact K → IsCompact L → Set.Finite { γ : Γ | (γ • ·) '' K ∩ L ≠ ∅ }

/-- Class `ProperlyDiscontinuousVAdd Γ T` says that the additive action `(+ᵥ) : Γ → T → T`
is properly discontinuous, that is, for any pair of compact sets `K, L` in `T`, only finitely many
`γ:Γ` move `K` to have nontrivial intersection with `L`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstMulAction/Variantc269855b1a5bd114bf507142d61e4640a780ff13784e6404bfd5546ac0815978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantc269855b1a5bd114bf507142d61e4640a780ff13784e6404bfd5546ac0815978.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24f79023a19e8fd27560899f833027994b05cfcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
