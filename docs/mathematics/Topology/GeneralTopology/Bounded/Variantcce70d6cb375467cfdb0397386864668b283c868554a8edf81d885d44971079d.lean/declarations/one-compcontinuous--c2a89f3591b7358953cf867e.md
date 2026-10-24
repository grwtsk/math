# one_compContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38fd7e97-69a1-ffda-306b-ddc8edb2bee1",
  "kind": "theorem",
  "lexical_name": "one_compContinuous",
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
  "slug": "one-compcontinuous--c2a89f3591b7358953cf867e",
  "source": {
    "blob": "e647d7b2606cb9aae3af48b5539b4443ade26db0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 676,
    "line": 651,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variantcce70d6cb375467cfdb0397386864668b283c868554a8edf81d885d44971079d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a89f3591b7358953cf867e4e54aedaad426a66801bf8cea2bfefba5ef9b37d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variantcce70d6cb375467cfdb0397386864668b283c868554a8edf81d885d44971079d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38fd7e97-69a1-ffda-306b-ddc8edb2bee1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–676.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_compContinuous [TopologicalSpace γ] (f : C(γ, α)) : (1 : α →ᵇ β).compContinuous f = 1 :=
  rfl
#align bounded_continuous_function.one_comp_continuous BoundedContinuousFunction.one_compContinuous
#align bounded_continuous_function.zero_comp_continuous BoundedContinuousFunction.zero_compContinuous

end One

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
variable [TopologicalSpace α] [PseudoMetricSpace β] [AddMonoid β]

variable [LipschitzAdd β]

variable (f g : α →ᵇ β) {x : α} {C : ℝ}

/-- The pointwise sum of two bounded continuous functions is again bounded continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variantcce70d6cb375467cfdb0397386864668b283c868554a8edf81d885d44971079d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variantcce70d6cb375467cfdb0397386864668b283c868554a8edf81d885d44971079d.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e647d7b2606cb9aae3af48b5539b4443ade26db0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
