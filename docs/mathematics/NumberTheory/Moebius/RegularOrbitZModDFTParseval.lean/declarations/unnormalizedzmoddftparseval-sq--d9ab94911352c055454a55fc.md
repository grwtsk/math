# unnormalizedZModDFTParseval_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee4f2ccc-e504-1186-b4a2-60cb6a71f663",
  "kind": "theorem",
  "lexical_name": "unnormalizedZModDFTParseval_sq",
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
  "slug": "unnormalizedzmoddftparseval-sq--d9ab94911352c055454a55fc",
  "source": {
    "blob": "6b33dd290e6721a5fe505484dd1864d9b9cd2e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9ab94911352c055454a55fc244f86eb8bc35e80112a007585c040c9e3ff83be",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4f2ccc-e504-1186-b4a2-60cb6a71f663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unnormalizedZModDFTParseval_sq
    (d : ℕ) [NeZero d]
    (C : ZMod (d * d) → ℂ) :
    (∑ k : ZMod (d * d), ‖ZMod.dft C k‖ ^ 2) =
      (((d * d : ℕ) : ℝ)) *
        (∑ s : ZMod (d * d), ‖C s‖ ^ 2) := by
  have hcomplex := sum_conj_dft_mul_dft d C
  change (∑ k, (starRingEnd ℂ) (ZMod.dft C k) * ZMod.dft C k) =
    ((d * d : ℕ) : ℂ) * ∑ s, (starRingEnd ℂ) (C s) * C s at hcomplex
  simp_rw [← Complex.normSq_eq_conj_mul_self] at hcomplex
  have hreal : (∑ k : ZMod (d * d), Complex.normSq (ZMod.dft C k)) =
      ((d * d : ℕ) : ℝ) * ∑ s : ZMod (d * d), Complex.normSq (C s) := by
    exact_mod_cast hcomplex
  simpa only [Complex.normSq_eq_norm_sq] using hreal

/-- Constructed source-level inhabitant of the exact DFT Parseval
proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitZModDFTParseval.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b33dd290e6721a5fe505484dd1864d9b9cd2e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
