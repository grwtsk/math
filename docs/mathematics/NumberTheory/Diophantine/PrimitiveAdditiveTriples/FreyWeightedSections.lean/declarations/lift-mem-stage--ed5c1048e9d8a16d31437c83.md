# lift_mem_stage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1aec2984-9fbe-81ab-6d16-092692aff9d7",
  "kind": "theorem",
  "lexical_name": "lift_mem_stage",
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
  "slug": "lift-mem-stage--ed5c1048e9d8a16d31437c83",
  "source": {
    "blob": "e51a9831becb8509f9aa08e273a57bdb598b6f7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 126,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed5c1048e9d8a16d31437c83f15b4920cea2d136058870df7a54d4c6eee343c7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1aec2984-9fbe-81ab-6d16-092692aff9d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_mem_stage (a b l : R) (hl : a * b * l = 1) (k : ℕ)
    (f : OpenCurve a b) (hf : f ∈ stage a b k) : lift a b l hl k f ∈ stage a b k := by
  change f ∈ Submodule.span R (generators a b k) at hf
  induction hf using Submodule.span_induction with
  | mem f hf =>
    rcases hf with ⟨i, hi, rfl⟩ | ⟨j, hj, rfl⟩
    · rw [lift_X_pow a b l hl k i hi]
      exact (stage a b k).smul_mem _
        (Submodule.subset_span (Or.inl ⟨k - i, Nat.sub_le _ _, rfl⟩))
    · rw [lift_Y_X_pow a b l hl k j hj]
      have hbound : k - (j + 2) + 2 ≤ k := by omega
      exact (stage a b k).smul_mem _
        (Submodule.subset_span (Or.inr ⟨k - (j + 2), hbound, rfl⟩))
  | zero => simpa using (stage a b k).zero_mem
  | add f g _ _ hf hg => simpa only [map_add] using (stage a b k).add_mem hf hg
  | smul c f _ hf => simpa only [map_smul] using (stage a b k).smul_mem c hf

/-- Both directions preserve the selected span, hence it has an actual linear automorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedSections.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e51a9831becb8509f9aa08e273a57bdb598b6f7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
