# integral_abs_deriv_phiM_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1521db1-a810-dabb-59e6-4bd73c79e80e",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv_phiM_le",
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
  "slug": "integral-abs-deriv-phim-le--716292f27bb53f9f1f1ae7e7",
  "source": {
    "blob": "313e0cb80f1a74a85dd7cbd1254688b4d0d64763",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:716292f27bb53f9f1f1ae7e730802ad392e05600c6f183d0ae5b5c494cd95592",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1521db1-a810-dabb-59e6-4bd73c79e80e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_deriv_phiM_le (hf : ModFactor f L A B) (hϱ : TaperProfile ϱ) (hw : 0 < w)
    (hwL : 2 * w ≤ L) : ∫ u, |deriv (phiM f ϱ L w) u| ≤ 2 := by
  have hL : 0 < L := by linarith
  exact integral_abs_deriv_le_two (by positivity : (0:ℝ) < L / 2)
    ((phiM_contDiff hf hϱ hw hwL).of_le (by norm_num)) (phiM_even hf)
    (phiM_antitoneOn hf hϱ hw) (phiM_le_one hf hϱ hw) (fun x hx => phiM_eq_zero hϱ hw hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ModWindow/Variante47f54c7fc2f2cee316d513bbde41859cbf7c2150d8b9a427f52c737ae5328dd.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313e0cb80f1a74a85dd7cbd1254688b4d0d64763` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
