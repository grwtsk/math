# sum_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74306919-fbd7-a09b-c9c5-0c9a3f1d5133",
  "kind": "theorem",
  "lexical_name": "sum_apply",
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
  "slug": "sum-apply--cac75c57d41c29e83057c9d6",
  "source": {
    "blob": "a9ba561e87a763e0ce61bc05a2038d2787c881ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 607,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cac75c57d41c29e83057c9d6c3c63a8f9454447edd4fa70e41a4555291a542cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74306919-fbd7-a09b-c9c5-0c9a3f1d5133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 607–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_apply {ι : Type*} (s : Finset ι) (f : ι → α →ᵇ β) (a : α) :
    (∑ i ∈ s, f i) a = ∑ i ∈ s, f i a := by simp

end comm_add

section LipschitzAdd

/- In this section, if `β` is an `AddMonoid` whose addition operation is Lipschitz, then we show
that the space of bounded continuous functions from `α` to `β` inherits a topological `AddMonoid`
structure, by using pointwise operations and checking that they are compatible with the uniform
distance.

Implementation note: The material in this section could have been written for `LipschitzMul`
and transported by `@[to_additive]`. We choose not to do this because this causes a few lemma
names (for example, `coe_mul`) to conflict with later lemma names for normed rings; this is only a
trivial inconvenience, but in any case there are no obvious applications of the multiplicative
version. -/

variable [TopologicalSpace α] [PseudoMetricSpace β] [AddMonoid β] [LipschitzAdd β]
variable (f g : α →ᵇ β) {x : α} {C : ℝ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd623ab3d8ff736dec584cd78a22075d63b6efbdb835e17498c45767c55cdb2bb.lean#L607).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9ba561e87a763e0ce61bc05a2038d2787c881ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
