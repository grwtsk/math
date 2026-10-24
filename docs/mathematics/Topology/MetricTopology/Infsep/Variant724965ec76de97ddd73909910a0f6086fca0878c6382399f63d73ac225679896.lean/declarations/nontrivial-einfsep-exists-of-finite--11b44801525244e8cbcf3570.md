# Nontrivial.einfsep_exists_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e5db26e-9cd0-3004-f5f4-a72f5687c482",
  "kind": "theorem",
  "lexical_name": "Nontrivial.einfsep_exists_of_finite",
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
  "slug": "nontrivial-einfsep-exists-of-finite--11b44801525244e8cbcf3570",
  "source": {
    "blob": "401781108a07303b7c65d234ccf372427d0c1114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 167,
    "path": "GRWTSK/Topology/MetricTopology/Infsep/Variant724965ec76de97ddd73909910a0f6086fca0878c6382399f63d73ac225679896.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11b44801525244e8cbcf357090c3287a030967bf9d3f33f996f02471b4e4fd4b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Infsep/Variant724965ec76de97ddd73909910a0f6086fca0878c6382399f63d73ac225679896.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e5db26e-9cd0-3004-f5f4-a72f5687c482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nontrivial.einfsep_exists_of_finite [Finite s] (hs : s.Nontrivial) :
    ∃ x ∈ s, ∃ y ∈ s, x ≠ y ∧ s.einfsep = edist x y := by
  cases nonempty_fintype s
  simp_rw [einfsep_of_fintype]
  rcases Finset.exists_mem_eq_inf s.offDiag.toFinset (by simpa) (uncurry edist) with ⟨w, hxy, hed⟩
  simp_rw [mem_toFinset] at hxy
  exact ⟨w.fst, hxy.1, w.snd, hxy.2.1, hxy.2.2, hed⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Infsep/Variant724965ec76de97ddd73909910a0f6086fca0878c6382399f63d73ac225679896.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Infsep/Variant724965ec76de97ddd73909910a0f6086fca0878c6382399f63d73ac225679896.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401781108a07303b7c65d234ccf372427d0c1114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
