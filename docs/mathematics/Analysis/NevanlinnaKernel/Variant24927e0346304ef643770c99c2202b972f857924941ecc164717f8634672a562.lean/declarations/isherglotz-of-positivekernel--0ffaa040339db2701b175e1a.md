# isHerglotz_of_positiveKernel

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
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24927e0346304ef643770c99c2202b972f857924941ecc164717f8634672a562.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c04c4a06-4a60-3129-e8e9-799c26e1ad55",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8bd4e4f-a753-849b-c93e-69fd2502b95d",
  "kind": "theorem",
  "lexical_name": "isHerglotz_of_positiveKernel",
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
  "slug": "isherglotz-of-positivekernel--0ffaa040339db2701b175e1a",
  "source": {
    "blob": "42a95c9fc72207e61946e3b63f2c47f0d1e2f1b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 86,
    "path": "GRWTSK/Analysis/NevanlinnaKernel/Variant24927e0346304ef643770c99c2202b972f857924941ecc164717f8634672a562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ffaa040339db2701b175e1a18b2f2790e69493ce94a7a498ed965454cc841a1",
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

Occurrence: `result:d8bd4e4f-a753-849b-c93e-69fd2502b95d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHerglotz_of_positiveKernel
    {M : ℂ → ℂ} (hDiff : DifferentiableOn ℂ M upperHalfPlane)
    (hPositive : HasPositiveNevanlinnaKernel M) :
    IsHerglotz M := by
  refine ⟨hDiff, ?_⟩
  intro z hz
  let point : Fin 1 → ℂ := fun _ ↦ z
  let coefficient : Fin 1 → ℂ := fun _ ↦ 1
  have hq := (hPositive 1 point coefficient (fun _ ↦ hz)).2
  have hform :
      kernelQuadraticForm (nevanlinnaKernel M) 1 point coefficient =
        nevanlinnaKernel M z z := by
    simp [kernelQuadraticForm, point, coefficient]
  rw [hform, nevanlinnaKernel_self M hz] at hq
  have hzim : 0 < z.im := hz
  rcases div_nonneg_iff.mp hq with hsame | hnegative
  · exact hsame.1
  · exfalso
    exact (not_le_of_gt hzim) hnegative.2

/-- Missing generic analytic theorem: Herglotz positivity produces a positive
Nevanlinna kernel.  It is named rather than installed as an axiom. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NevanlinnaKernel/Variant24927e0346304ef643770c99c2202b972f857924941ecc164717f8634672a562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NevanlinnaKernel/Variant24927e0346304ef643770c99c2202b972f857924941ecc164717f8634672a562.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42a95c9fc72207e61946e3b63f2c47f0d1e2f1b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
