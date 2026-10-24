# isHerglotz_of_positiveKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5a84ce4-6abc-b1d9-ac7c-9f05fcd678f0",
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
  "slug": "isherglotz-of-positivekernel--cb4ea5cec344c93d0e2ac65b",
  "source": {
    "blob": "e1e43a37500c43f579bfcf60bcf731d730705664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 94,
    "path": "GRWTSK/Analysis/NevanlinnaKernel/Variantd1f28e848912887dcdbf8e749e23bed7dc9b78bbbbbcbbf286414d3550902ad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb4ea5cec344c93d0e2ac65baa94e9bc19000ef688a94561e2460924b0c7a9d2",
  "verification": {
    "reference": "docs/verification/Analysis/NevanlinnaKernel/Variantd1f28e848912887dcdbf8e749e23bed7dc9b78bbbbbcbbf286414d3550902ad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5a84ce4-6abc-b1d9-ac7c-9f05fcd678f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–116.

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

[Verification target and public status](../../../../../verification/Analysis/NevanlinnaKernel/Variantd1f28e848912887dcdbf8e749e23bed7dc9b78bbbbbcbbf286414d3550902ad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NevanlinnaKernel/Variantd1f28e848912887dcdbf8e749e23bed7dc9b78bbbbbcbbf286414d3550902ad3.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e43a37500c43f579bfcf60bcf731d730705664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
