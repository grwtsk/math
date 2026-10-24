# paperFT_mul_Pc_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f24bafedc67ad05f8029cd7507b5989ae3f7db16",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b05041c-0882-6e72-ad1e-2bed510ec786",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b616751-a988-fe36-e6d7-7dc3a4356984",
  "kind": "theorem",
  "lexical_name": "paperFT_mul_Pc_eq",
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
  "slug": "paperft-mul-pc-eq--4370176e890e7325c2ac5dbd",
  "source": {
    "blob": "f24bafedc67ad05f8029cd7507b5989ae3f7db16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4370176e890e7325c2ac5dbdbdbe43fb3783ff10239759f2f31d839fc2283b5c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b616751-a988-fe36-e6d7-7dc3a4356984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paperFT_mul_Pc_eq (k : ℝ → ℂ) (L : ℝ) (c : ℕ → ℂ) :
    (fun τ : ℝ => paperFT k τ * ((Pc (Real.exp L) c τ : ℝ) : ℂ))
      = fun τ : ℝ => ∑ N ∈ Finset.Ioc 0 ⌊Real.exp L⌋₊,
          ((1 / π : ℂ) / ((Real.sqrt N : ℝ) : ℂ)) *
            (paperFT k τ * (((c N).re * Real.cos (τ * Real.log N) + (c N).im * Real.sin (τ * Real.log N) : ℝ) : ℂ)) := by
  ext τ
  simp only [Pc]
  push_cast
  rw [Finset.mul_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun N _ => ?_
  ring

/-- h·P_c(e^L) is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeTermJ/Variante117d3e5127c0def3958201dbb9e88465b5c2f3c15adec01d45a2fcda1183eb1.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f24bafedc67ad05f8029cd7507b5989ae3f7db16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
