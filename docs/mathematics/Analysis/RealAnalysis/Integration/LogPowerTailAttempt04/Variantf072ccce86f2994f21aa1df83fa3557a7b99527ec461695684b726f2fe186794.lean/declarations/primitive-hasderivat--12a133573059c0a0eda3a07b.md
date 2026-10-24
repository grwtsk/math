# primitive_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d561d2fa-6f76-0ead-9fa2-838d37769118",
  "kind": "theorem",
  "lexical_name": "primitive_hasDerivAt",
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
  "slug": "primitive-hasderivat--12a133573059c0a0eda3a07b",
  "source": {
    "blob": "a5a4b3ffe1a3ff66e1b592264f9ff34a6cd73167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a133573059c0a0eda3a07b091bd80a280b9c7ceda7ea422fbff624fc25ba92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d561d2fa-6f76-0ead-9fa2-838d37769118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitive_hasDerivAt {x : ℝ} (hx : 0 < x) :
    HasDerivAt logPowerPrimitive (logPower x) x := by
  have hh := (((Real.hasDerivAt_log hx.ne').add_const 2).const_mul (-2)).mul
    (Real.hasDerivAt_rpow_const (p:=-(1:ℝ)/2) (Or.inl hx.ne'))
  have he : x⁻¹*x^(-(1:ℝ)/2) = x^(-(3:ℝ)/2) := by
    rw [← Real.rpow_neg_one, ← Real.rpow_add hx]
    norm_num
  rw [show -(1:ℝ)/2-1=-(3:ℝ)/2 by norm_num] at hh
  have he2 : -2*x⁻¹*x^(-(1:ℝ)/2) = -2*x^(-(3:ℝ)/2) := by rw [mul_assoc,he]
  rw [he2] at hh
  unfold logPowerPrimitive logPower
  convert! hh using 1
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogPowerTailAttempt04/Variantf072ccce86f2994f21aa1df83fa3557a7b99527ec461695684b726f2fe186794.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5a4b3ffe1a3ff66e1b592264f9ff34a6cd73167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
