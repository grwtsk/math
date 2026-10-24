# quartic_tail_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa579937-985d-a600-c5f6-410324e280ec",
  "kind": "theorem",
  "lexical_name": "quartic_tail_identity",
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
  "slug": "quartic-tail-identity--b8c84659572490e015995633",
  "source": {
    "blob": "e2e757d62d2aa098cf88c5ccd31c47f0657e790f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 242,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8c84659572490e01599563303f352d5611fc0a40a0f6a38e258def73495c487",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa579937-985d-a600-c5f6-410324e280ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quartic_tail_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    QuarticPrimitive.centeredTail N s =
      -(s + 4) * (N : ℂ) ^ (-(s + 5)) / 30240 + (s + 4) * (s + 5) * tail N s := by
  have h4 := quarticToFifth.integer_tail_identity (z := s + 4) hN
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have h5 := fifthToSixth.integer_tail_identity (z := s + 5) hN
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  rw [show s + 4 + 1 = s + 5 by ring] at h4
  rw [show s + 5 + 1 = s + 6 by ring] at h5
  change QuarticPrimitive.centeredTail N s = (s + 4) * fifthKernel.tail (s + 5) N at h4
  rw [h5] at h4
  -- Resolve the centering term explicitly instead of rewriting rawTail as centeredTail.
  have hc := tail_eq_raw (T := (N : ℝ)) (by exact_mod_cast hN) hs
  simp only [Complex.ofReal_natCast] at hc
  have hsp : s + 5 ≠ 0 := Complex.ne_zero_of_re_pos (by
    simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have heq : sixthRawKernel.tail (s + 6) N = tail N s -
      (N : ℂ) ^ (-(s + 5)) / (30240 * (s + 5)) := by linear_combination -hc
  rw [heq] at h4
  rw [h4]
  field_simp [hsp] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e757d62d2aa098cf88c5ccd31c47f0657e790f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
