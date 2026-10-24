# summable_const_div_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d69fa45-dafa-7a2d-b9ec-d95b84c8baec",
  "kind": "theorem",
  "lexical_name": "summable_const_div_iff",
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
  "slug": "summable-const-div-iff--f8eac95cc483eb0c5bb0da44",
  "source": {
    "blob": "143881794b61cba2e98f2d3c875329c3184da477",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 131,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8eac95cc483eb0c5bb0da44541ca410bb655f14961882289aca5b0b4946520b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d69fa45-dafa-7a2d-b9ec-d95b84c8baec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_const_div_iff (h : a ≠ 0) : (Summable fun i ↦ a / f i) ↔ Summable (1 / f) := by
  simpa only [div_eq_mul_inv, one_mul] using summable_mul_left_iff h

end DivisionSemiring

/-!
### Multiplying two infinite sums

In this section, we prove various results about `(∑' x : ι, f x) * (∑' y : κ, g y)`. Note that we
always assume that the family `fun x : ι × κ ↦ f x.1 * g x.2` is summable, since there is no way to
deduce this from the summabilities of `f` and `g` in general, but if you are working in a normed
space, you may want to use the analogous lemmas in `Analysis.Normed.Module.Basic`
(e.g `tsum_mul_tsum_of_summable_norm`).

We first establish results about arbitrary index types, `ι` and `κ`, and then we specialize to
`ι = κ = ℕ` to prove the Cauchy product formula (see `tsum_mul_tsum_eq_tsum_sum_antidiagonal`).

#### Arbitrary index types
-/


section tsum_mul_tsum

variable [TopologicalSpace α] [T3Space α] [NonUnitalNonAssocSemiring α] [IsTopologicalSemiring α]
  {f : ι → α} {g : κ → α} {s t u : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantac766ad73e6f950ceae6959887a8e2799c0486f5069472f639b96b88abf992f2.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `143881794b61cba2e98f2d3c875329c3184da477` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
