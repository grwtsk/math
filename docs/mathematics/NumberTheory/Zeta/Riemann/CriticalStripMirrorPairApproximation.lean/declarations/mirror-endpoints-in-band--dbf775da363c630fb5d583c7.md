# mirror_endpoints_in_band

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f3e12cf-7033-8cfd-4aed-06210338be51",
  "kind": "lemma",
  "lexical_name": "mirror_endpoints_in_band",
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
  "slug": "mirror-endpoints-in-band--dbf775da363c630fb5d583c7",
  "source": {
    "blob": "7c53533ebffe49a78e37a183c643361f37afb2ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbf775da363c630fb5d583c75734e796da411d544c8c681dcc23d22389e93c6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f3e12cf-7033-8cfd-4aed-06210338be51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mirror_endpoints_in_band {z : ℂ} (hz : Eligible z) :
    MirrorChannels.center z+MirrorChannels.offset z ∈ band |z.im| ∧
      MirrorChannels.center z-MirrorChannels.offset z ∈ band |z.im| := by
  rw [MirrorChannels.center_plus_offset,MirrorChannels.center_minus_offset]
  constructor
  · exact ⟨hz.1,hz.2.1,neg_abs_le z.im,le_abs_self z.im⟩
  · change 0 < (criticalReflection z).re ∧ (criticalReflection z).re < 1 ∧
      -|z.im| ≤ (criticalReflection z).im ∧ (criticalReflection z).im ≤ |z.im|
    simp only [criticalReflection,Complex.sub_re,Complex.one_re,Complex.conj_re,
      Complex.sub_im,Complex.one_im,Complex.conj_im,zero_sub,neg_neg]
    exact ⟨by linarith [hz.2.1],by linarith [hz.1],neg_abs_le z.im,le_abs_self z.im⟩

/-- On the open strip, the normalized zero is precisely a canonical target zero.
The trivial-zero and pole exclusions are proved, not omitted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorPairApproximation.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c53533ebffe49a78e37a183c643361f37afb2ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
