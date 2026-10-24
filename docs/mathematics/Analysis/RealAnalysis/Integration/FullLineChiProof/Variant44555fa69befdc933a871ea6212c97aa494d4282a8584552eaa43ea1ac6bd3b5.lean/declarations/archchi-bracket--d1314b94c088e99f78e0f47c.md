# archChi_bracket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a325f9b8-7cae-425c-4ba0-7759f3194683",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:606a8182-7fe6-8fcb-ae80-107dd765863e",
  "kind": "theorem",
  "lexical_name": "archChi_bracket",
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
  "slug": "archchi-bracket--d1314b94c088e99f78e0f47c",
  "source": {
    "blob": "9416a67313657b74c4c490f7fc262e07c4d0ce9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 265,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1314b94c088e99f78e0f47c3e6fb36fd137a7fea4a2fad472e3de54551f33df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:606a8182-7fe6-8fcb-ae80-107dd765863e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archChi_bracket (hκ : κ ≤ 1) (hq : 1 ≤ q) (t : ℝ) :
    logDeriv (archChi q κ) (1/2 + t * I) + logDeriv (archChi q κ) (1/2 - t * I)
      = ((2 * Real.pi * muq κ q t : ℝ) : ℂ) := by
  have hp : 0 < ((1:ℂ)/2 + t * I).re := by simp
  have hm : 0 < ((1:ℂ)/2 - t * I).re := by simp
  rw [logDeriv_archChi q κ hp, logDeriv_archChi q κ hm]
  set w : ℂ := ((GammaChi.absc κ : ℝ) : ℂ) + Complex.I * ((t / 2 : ℝ) : ℂ) with hw
  have e1 : ((1:ℂ)/2 + t * I + κ) / 2 = w := by
    rw [hw]; unfold GammaChi.absc; push_cast; ring
  have e2 : ((1:ℂ)/2 - t * I + κ) / 2 = starRingEnd ℂ w := by
    have : starRingEnd ℂ w = ((GammaChi.absc κ : ℝ) : ℂ) - Complex.I * ((t / 2 : ℝ) : ℂ) := by
      rw [hw]; simp only [map_add, map_mul, Complex.conj_ofReal, Complex.conj_I]; ring
    rw [this]; unfold GammaChi.absc; push_cast; ring
  have hwZ : w ∈ Complex.integerComplement := GammaChi.arg_mem hκ (t / 2)
  rw [e1, e2, Zeta23.WeilEF.digamma_conj hwZ]
  have hre : (1/2 : ℂ) * Complex.digamma w + (1/2 : ℂ) * starRingEnd ℂ (Complex.digamma w)
      = ((Complex.digamma w).re : ℂ) := by
    rw [← mul_add, Complex.add_conj]; push_cast; ring
  have hq0 : (0:ℝ) < q := by exact_mod_cast (lt_of_lt_of_le zero_lt_one hq)
  have hlog : Real.log (q / Real.pi) = Real.log q - Real.log Real.pi :=
    Real.log_div hq0.ne' Real.pi_pos.ne'
  have hμ : 2 * Real.pi * muq κ q t = (Complex.digamma w).re + (Real.log q - Real.log Real.pi) := by
    rw [GammaChi.muq_eq, hlog, ← hw]
    field_simp
  rw [hμ]
  push_cast
  linear_combination hre

end Arch

/-! ## Majorant pack for L(s,χ) and the arch factor -/

section MajorantsChi

variable {q : ℕ} [NeZero q] {χ : DirichletCharacter ℂ q}

/-- **L'/L(χ) is bounded on vertical lines to the right of 1** (by Σ Λ(n) n^{−c}). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant44555fa69befdc933a871ea6212c97aa494d4282a8584552eaa43ea1ac6bd3b5.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416a67313657b74c4c490f7fc262e07c4d0ce9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
