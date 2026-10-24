# tendsto_iff_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b201d100-2641-a62c-885d-8d10d6b7bf70",
  "kind": "theorem",
  "lexical_name": "tendsto_iff_forall",
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
  "slug": "tendsto-iff-forall--b42ec65fd8cb244eb7e161ac",
  "source": {
    "blob": "116ccb992884f1ad81784391c0e7e31ed7666a74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/Hyperreal/Varianta85aaeff8b9491074570c7023de357504c0fdeb719c24e604e941844836f18fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b42ec65fd8cb244eb7e161accd3a5dc2834f0470810d49738ef42fa4c31aa3ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hyperreal/Varianta85aaeff8b9491074570c7023de357504c0fdeb719c24e604e941844836f18fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b201d100-2641-a62c-885d-8d10d6b7bf70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_iff_forall {x : ℝ*} {r : ℝ} :
    x.Tendsto (𝓝 r) ↔ (∀ s < r, s ≤ x) ∧ (∀ s > r, x ≤ s) := by
  rcases ofSeq_surjective x with ⟨f, rfl⟩
  rw [tendsto_ofSeq, (nhds_basis_Ioo _).tendsto_right_iff]
  simp_rw [Set.mem_Ioo, eventually_and, ← ofSeq_lt_ofSeq]
  refine ⟨fun H ↦ ⟨fun s hs ↦ ?_, fun s hs ↦ ?_⟩, fun H ⟨s, t⟩ ⟨hs, ht⟩ ↦ ⟨?_, ?_⟩⟩
  · obtain ⟨t, ht⟩ := exists_gt r
    exact (H ⟨s, t⟩ ⟨hs, ht⟩).1.le
  · obtain ⟨t, ht⟩ := exists_lt r
    exact (H ⟨t, s⟩ ⟨ht, hs⟩).2.le
  · obtain ⟨u, hu, hu'⟩ := exists_between hs
    exact (coe_lt_coe.2 hu).trans_le (H.1 _ hu')
  · obtain ⟨u, hu, hu'⟩ := exists_between ht
    exact (H.2 _ hu).trans_lt (coe_lt_coe.2 hu')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hyperreal/Varianta85aaeff8b9491074570c7023de357504c0fdeb719c24e604e941844836f18fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hyperreal/Varianta85aaeff8b9491074570c7023de357504c0fdeb719c24e604e941844836f18fd.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116ccb992884f1ad81784391c0e7e31ed7666a74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
