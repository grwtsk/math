# IsSeqCompact.totallyBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a6000ca-5f2b-e33a-5e9c-fcadc6b5d99b",
  "kind": "theorem",
  "lexical_name": "IsSeqCompact.totallyBounded",
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
  "slug": "isseqcompact-totallybounded--da579578704b8f45482c9d6e",
  "source": {
    "blob": "b886689c265cafe71afa294c77c18c9ffec30b9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 334,
    "path": "GRWTSK/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da579578704b8f45482c9d6eaffe4ff139b9420c3cee887739680403a2ebab95",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a6000ca-5f2b-e33a-5e9c-fcadc6b5d99b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsSeqCompact.totallyBounded (h : IsSeqCompact s) : TotallyBounded s := by
  intro V V_in
  unfold IsSeqCompact at h
  contrapose! h
  obtain ⟨u, u_in, hu⟩ : ∃ u : ℕ → X, (∀ n, u n ∈ s) ∧ ∀ n m, m < n → u m ∉ ball (u n) V := by
    simp only [not_subset, mem_iUnion₂, not_exists, exists_prop] at h
    simpa only [forall_and, forall_mem_image, not_and] using seq_of_forall_finite_exists h
  refine ⟨u, u_in, fun x _ φ hφ huφ => ?_⟩
  obtain ⟨N, hN⟩ : ∃ N, ∀ p q, p ≥ N → q ≥ N → (u (φ p), u (φ q)) ∈ V :=
    huφ.cauchySeq.mem_entourage V_in
  exact hu (φ <| N + 1) (φ N) (hφ <| Nat.lt_add_one N) (hN (N + 1) N N.le_succ le_rfl)

variable [IsCountablyGenerated (𝓤 X)]

/-- A sequentially compact set in a uniform set with countably generated uniformity filter
is complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sequences/Variant8cbbf9195abb67c2139cac4221526c3ce9f916130399d4741b2923a195838aa3.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b886689c265cafe71afa294c77c18c9ffec30b9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
