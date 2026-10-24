# tendsto_iff_tendsto_subseq_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8d508b5-5b68-95ea-a366-76c44efa074d",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_tendsto_subseq_of_antitone",
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
  "slug": "tendsto-iff-tendsto-subseq-of-antitone--5ca32e2274ad7c23b4af98fd",
  "source": {
    "blob": "5a0e82ff7a97f4f23dcbd9b63dfc0a268924d85d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 279,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ca32e2274ad7c23b4af98fde6719ad8e1390d9ba597da6af308ad969c7818e1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8d508b5-5b68-95ea-a366-76c44efa074d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_tendsto_subseq_of_antitone {ι₁ ι₂ α : Type*} [SemilatticeSup ι₁] [Preorder ι₂]
    [Nonempty ι₁] [TopologicalSpace α] [ConditionallyCompleteLinearOrder α] [OrderTopology α]
    [NoMinOrder α] {f : ι₂ → α} {φ : ι₁ → ι₂} {l : α} (hf : Antitone f)
    (hg : Tendsto φ atTop atTop) : Tendsto f atTop (𝓝 l) ↔ Tendsto (f ∘ φ) atTop (𝓝 l) :=
  tendsto_iff_tendsto_subseq_of_monotone (α := αᵒᵈ) hf hg

/-! The next family of results, such as `isLUB_of_tendsto_atTop` and `iSup_eq_of_tendsto`, are
converses to the standard fact that bounded monotone functions converge. They state, that if a
monotone function `f` tends to `a` along `Filter.atTop`, then that value `a` is a least upper bound
for the range of `f`.

Related theorems above (`IsLUB.isLUB_of_tendsto`, `IsGLB.isGLB_of_tendsto` etc) cover the case
when `f x` tends to `a` as `x` tends to some point `b` in the domain. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneConvergence/Variant53b89abe67c3435ec559b30e97f0314b850c79f2b22cc208ab5ee6f90234a907.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a0e82ff7a97f4f23dcbd9b63dfc0a268924d85d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
