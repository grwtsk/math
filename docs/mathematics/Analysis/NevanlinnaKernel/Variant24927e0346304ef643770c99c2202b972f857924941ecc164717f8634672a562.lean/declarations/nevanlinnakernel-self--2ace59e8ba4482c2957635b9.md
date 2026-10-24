# nevanlinnaKernel_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42a95c9fc72207e61946e3b63f2c47f0d1e2f1b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24927e0346304ef643770c99c2202b972f857924941ecc164717f8634672a562.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f897e3b3-1ad8-fec7-ef68-2493f79504f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2935577-40d1-6366-cbd0-57090fcd096a",
  "kind": "theorem",
  "lexical_name": "nevanlinnaKernel_self",
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
  "slug": "nevanlinnakernel-self--2ace59e8ba4482c2957635b9",
  "source": {
    "blob": "42a95c9fc72207e61946e3b63f2c47f0d1e2f1b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 67,
    "path": "GRWTSK/Analysis/NevanlinnaKernel/Variant24927e0346304ef643770c99c2202b972f857924941ecc164717f8634672a562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ace59e8ba4482c2957635b9c0416d8d5fc0d707fbe24f279e901fbd2e365a9f",
  "verification": {
    "reference": "docs/verification/Analysis/NevanlinnaKernel/Variant24927e0346304ef643770c99c2202b972f857924941ecc164717f8634672a562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2935577-40d1-6366-cbd0-57090fcd096a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nevanlinnaKernel_self
    (M : ℂ → ℂ) {z : ℂ} (hz : z ∈ upperHalfPlane) :
    nevanlinnaKernel M z z = ((M z).im / z.im : ℝ) := by
  have hzim : z.im ≠ 0 := ne_of_gt hz
  have hden : z - conj z ≠ 0 := by
    intro h
    have him := congr_arg Complex.im h
    simp at him
    exact hzim (by linarith)
  rw [nevanlinnaKernel, div_eq_iff hden]
  apply Complex.ext
  · simp
  · simp
    field_simp

/-- Full kernel positivity implies pointwise Herglotz positivity.  Analyticity
is kept as a separate premise; the converse requires the missing Herglotz
representation/RKHS theorem. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NevanlinnaKernel/Variant24927e0346304ef643770c99c2202b972f857924941ecc164717f8634672a562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NevanlinnaKernel/Variant24927e0346304ef643770c99c2202b972f857924941ecc164717f8634672a562.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42a95c9fc72207e61946e3b63f2c47f0d1e2f1b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
