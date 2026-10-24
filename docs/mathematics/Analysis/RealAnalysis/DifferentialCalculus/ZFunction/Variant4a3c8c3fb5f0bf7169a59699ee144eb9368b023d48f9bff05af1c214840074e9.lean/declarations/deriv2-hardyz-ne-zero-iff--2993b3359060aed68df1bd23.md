# deriv2_hardyZ_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dc2399d604cba333cc3cd93c2755c0a9960273fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18c0e2fe-5fcb-8af2-9f91-2c8132c9ff50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9bb733c6-debd-d513-4539-c24044ae9732",
  "kind": "theorem",
  "lexical_name": "deriv2_hardyZ_ne_zero_iff",
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
  "slug": "deriv2-hardyz-ne-zero-iff--2993b3359060aed68df1bd23",
  "source": {
    "blob": "dc2399d604cba333cc3cd93c2755c0a9960273fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 281,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2993b3359060aed68df1bd23977c8eee885f6ab628226067e090ffe1a229d64a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bb733c6-debd-d513-4539-c24044ae9732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv2_hardyZ_ne_zero_iff {t : ℝ} (ht : t ≠ 0) (hW : hardyW (sline t) = 0) :
    deriv (deriv hardyZ) t ≠ 0 ↔ deriv hardyW (sline t) ≠ 0 := by
  have him := d2ZC_im ht
  have hderiv := (hasDerivAt_deriv_hardyZ ht).deriv
  rw [hW, mul_zero, add_zero] at him hderiv
  -- the complex number Y := −e·W′(s) is real and deriv (deriv hardyZ) t = Y.re
  have hval : ((deriv (deriv hardyZ) t : ℝ) : ℂ) = -(ephase t) * deriv hardyW (sline t) := by
    rw [hderiv]
    exact Complex.ext (by simp) (by rw [Complex.ofReal_im]; exact him.symm)
  constructor
  · intro h hd
    apply h
    have := hval; rw [hd, mul_zero] at this
    exact_mod_cast this
  · intro h hd
    apply h
    have := hval; rw [hd] at this
    have h0 : -(ephase t) * deriv hardyW (sline t) = 0 := by rw [← this]; simp
    rcases mul_eq_zero.mp h0 with h1 | h1
    · exact absurd (neg_eq_zero.mp h1) (ephase_ne_zero t)
    · exact h1

/-- simple zero of W ⟺ W = 0 and W′ ≠ 0 (W analytic off ℝ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc2399d604cba333cc3cd93c2755c0a9960273fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
