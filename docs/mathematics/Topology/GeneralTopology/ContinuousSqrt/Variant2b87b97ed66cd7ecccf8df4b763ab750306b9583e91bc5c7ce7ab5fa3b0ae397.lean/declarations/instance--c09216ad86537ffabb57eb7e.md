# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:106d56a0adadd86c0e11ec35f603f75b3c3af873db5b196b80a54c5d588f0ac0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c09216ad86537ffabb57eb7e",
  "source": {
    "blob": "68078455bea93d5eeffb169400653967689d6055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 21,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousSqrt/Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c09216ad86537ffabb57eb7e28dfb40a5c136d8f18b299fc88eb60bec2006740",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousSqrt/Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:106d56a0adadd86c0e11ec35f603f75b3c3af873db5b196b80a54c5d588f0ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) instContinuousSqrtRCLike {𝕜 : Type*} [RCLike 𝕜] :
    ContinuousSqrt 𝕜 where
  sqrt := ((↑) ∘ (√·) ∘ re ∘ (fun z ↦ z.2 - z.1))
  continuousOn_sqrt := by fun_prop
  sqrt_nonneg _ _ := by simp
  sqrt_mul_sqrt x hx := by
    simp only [Function.comp_apply,star_def]
    rw [← sub_nonneg] at hx
    obtain hx' := nonneg_iff.mp hx |>.right
    rw [← conj_eq_iff_im, conj_eq_iff_re] at hx'
    rw [← ofReal_mul, Real.mul_self_sqrt, hx', add_sub_cancel]
    simpa using nonneg_iff.mp hx |>.left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousSqrt/Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousSqrt/Variant2b87b97ed66cd7ecccf8df4b763ab750306b9583e91bc5c7ce7ab5fa3b0ae397.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68078455bea93d5eeffb169400653967689d6055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
