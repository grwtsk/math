# inverse_power_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0304cef6-11ca-acd1-2996-b64c6fc6dfbc",
  "kind": "theorem",
  "lexical_name": "inverse_power_integrable",
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
  "slug": "inverse-power-integrable--6dac69523156ae5678f1dbe0",
  "source": {
    "blob": "83e1c3ee5bc44f243586d512b60b7b94d963a067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dac69523156ae5678f1dbe00fec65e5d2918716f4e7f8d4e7abd9032a981afb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0304cef6-11ca-acd1-2996-b64c6fc6dfbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_power_integrable (k : ℕ) (hk : 0 < k) (T : ℝ) (hT : 0 < T) :
    IntegrableOn (fun x : ℝ => 1/x^(k+1)) (Ioi T) := by
  have hp : (-(k+1 : ℕ) : ℝ) < -1 := by exact_mod_cast (by omega : -(k+1 : ℤ) < -1)
  have hi := integrableOn_Ioi_rpow_of_lt hp hT
  apply hi.congr_fun _ measurableSet_Ioi
  intro x hx
  exact negative_nat_rpow (hT.trans hx) (k+1)

/-- Exact inverse-power improper integral, with integrability proved above. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMoments/Variant0222cc0f4053da36c0461ded5f24668619fe996f184e79128562e09c82948173.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e1c3ee5bc44f243586d512b60b7b94d963a067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
