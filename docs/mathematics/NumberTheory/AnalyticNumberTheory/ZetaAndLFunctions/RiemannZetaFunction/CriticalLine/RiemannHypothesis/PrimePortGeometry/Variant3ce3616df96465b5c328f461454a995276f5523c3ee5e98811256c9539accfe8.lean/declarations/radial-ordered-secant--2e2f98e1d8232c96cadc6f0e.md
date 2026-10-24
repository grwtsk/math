# radial_ordered_secant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:443f80d3-ed92-3c36-d2ca-587acf91d861",
  "kind": "theorem",
  "lexical_name": "radial_ordered_secant",
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
  "slug": "radial-ordered-secant--2e2f98e1d8232c96cadc6f0e",
  "source": {
    "blob": "62eb2fe1e41b8a150fdcc6da78a85162b05c8c0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 86,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variant3ce3616df96465b5c328f461454a995276f5523c3ee5e98811256c9539accfe8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e2f98e1d8232c96cadc6f0ed84dec1e6027a1774b59a7a75c358584720bee87",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variant3ce3616df96465b5c328f461454a995276f5523c3ee5e98811256c9539accfe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:443f80d3-ed92-3c36-d2ca-587acf91d861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radial_ordered_secant (p : Fin 2) {β η : ℝ} (hη : η ≤ 1) (hβη : β ≤ η) :
    radialFloor * primeLog p * (η - β) ≤ radial p β - radial p η := by
  have hlog : 0 ≤ primeLog p := by
    fin_cases p <;> exact Real.log_nonneg (by norm_num)
  have hdiff : 0 ≤ (η - β) * primeLog p := mul_nonneg (sub_nonneg.2 hβη) hlog
  have he : radial p β = radial p η * Real.exp ((η - β) * primeLog p) := by
    unfold radial
    rw [← Real.exp_add]
    congr 1
    ring
  have ha := Real.add_one_le_exp ((η - β) * primeLog p)
  have hb := mul_le_mul_of_nonneg_left ha (Real.exp_pos (-(η - 1 / 2) * primeLog p)).le
  have hc := mul_le_mul_of_nonneg_right (radial_lower p hη) hdiff
  rw [he]
  change radial p η * ((η - β) * primeLog p + 1) ≤
    radial p η * Real.exp ((η - β) * primeLog p) at hb
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variant3ce3616df96465b5c328f461454a995276f5523c3ee5e98811256c9539accfe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePortGeometry/Variant3ce3616df96465b5c328f461454a995276f5523c3ee5e98811256c9539accfe8.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62eb2fe1e41b8a150fdcc6da78a85162b05c8c0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
