# polynomial_projection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f6b13c4-c9ed-95b8-5bcc-315bd48df8d9",
  "kind": "theorem",
  "lexical_name": "polynomial_projection",
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
  "slug": "polynomial-projection--c5382d8660d4af51d585a6db",
  "source": {
    "blob": "a8f0995dc9d24abcc94dff1535f375a78b47956d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5382d8660d4af51d585a6dbd5628379b0915430646475875e276c45c012dcc7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f6b13c4-c9ed-95b8-5bcc-315bd48df8d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_projection {s : ℂ} (hx : (1/2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1)
    (ht : (16 : ℝ) ≤ s.im) (ht1 : s.im ≤ 17) : (9 : ℝ) ≤ -(polynomial s).re := by
  have h := value_nonneg (u := 2*s.re-1) (v := s.im-16)
    (by linarith) (by linarith) (by linarith) (by linarith)
  rw [tensor_identity] at h
  have he : (⟨(1+(2*s.re-1))/2,16+(s.im-16)⟩ : ℂ) = s := by
    apply Complex.ext <;> simp only [Complex.mk_re,Complex.mk_im] <;> ring
  rw [he] at h
  linarith

/-- The same polynomial guard fails below the admitted band; this is not a zeta zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandBernstein.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8f0995dc9d24abcc94dff1535f375a78b47956d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
