# pi.isInvInvariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f9b410a5357ab16eab7bffcde6b0e3f2cb8e3e5dd93324fc1f9b2042d1cf0f9",
  "kind": "instance",
  "lexical_name": "pi.isInvInvariant",
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
  "slug": "pi-isinvinvariant--aa6b96af981c7a1f4cedbf7e",
  "source": {
    "blob": "9faf376e19ecd46825d0a28d6b48596f21c5433d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 550,
    "line": 543,
    "path": "GRWTSK/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa6b96af981c7a1f4cedbf7e9305fee077ea9d504ea932af678f27e9324fc790",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f9b410a5357ab16eab7bffcde6b0e3f2cb8e3e5dd93324fc1f9b2042d1cf0f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–550.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pi.isInvInvariant [∀ i, Group (α i)] [∀ i, MeasurableInv (α i)]
    [∀ i, IsInvInvariant (μ i)] : IsInvInvariant (Measure.pi μ) := by
  refine ⟨(Measure.pi_eq fun s hs => ?_).symm⟩
  have A : Inv.inv ⁻¹' pi univ s = Set.pi univ fun i => Inv.inv ⁻¹' s i := by ext; simp
  simp_rw [Measure.inv, Measure.map_apply measurable_inv (MeasurableSet.univ_pi hs), A, pi_pi,
    measure_preimage_inv]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Pi/Varianta46469751958b46f3f2de1e69f8fd59e8c729910bb1e449dcda68e0b99a41609.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9faf376e19ecd46825d0a28d6b48596f21c5433d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
