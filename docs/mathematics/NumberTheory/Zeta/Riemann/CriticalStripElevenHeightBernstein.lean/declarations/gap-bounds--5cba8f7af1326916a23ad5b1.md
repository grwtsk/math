# gap_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e8f4a94-58c2-baef-090d-a300949bac61",
  "kind": "theorem",
  "lexical_name": "gap_bounds",
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
  "slug": "gap-bounds--5cba8f7af1326916a23ad5b1",
  "source": {
    "blob": "28003962072052acd7b6515fe490aaf2ea5a5f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cba8f7af1326916a23ad5b14e8da6448362aa3606431757db227993b004a30c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e8f4a94-58c2-baef-090d-a300949bac61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gap_bounds {x y : ℝ} (hx : (1/2 : ℝ) ≤ x) (hx1 : x ≤ 1)
    (hy : (100 : ℝ) ≤ y) (hy1 : y ≤ 121) : 0 ≤ modelGap x y ∧ 0 ≤ tailGap x y := by
  have hu : 0 ≤ 2*x-1 := by linarith
  have hu1 : 2*x-1 ≤ 1 := by linarith
  have hv : 0 ≤ (y-100)/21 := by linarith
  have hv1 : (y-100)/21 ≤ 1 := by linarith
  have hm := tensorValue_nonneg modelCoefficients hu hu1 hv hv1
  have ht := tensorValue_nonneg tailCoefficients hu hu1 hv hv1
  rw [model_tensor_identity, show (1+(2*x-1))/2=x by ring,
    show 100+21*((y-100)/21)=y by ring] at hm
  rw [tail_tensor_identity, show (1+(2*x-1))/2=x by ring,
    show 100+21*((y-100)/21)=y by ring] at ht
  constructor <;> linarith

/-- Neither changing a coefficient nor changing the height rectangle keeps the proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightBernstein.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28003962072052acd7b6515fe490aaf2ea5a5f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
