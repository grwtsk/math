# normalizedPrimitiveBump_deriv_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:361b4493-8373-0eee-5f2b-b1ca18f5f626",
  "kind": "theorem",
  "lexical_name": "normalizedPrimitiveBump_deriv_odd",
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
  "slug": "normalizedprimitivebump-deriv-odd--906742207f40ac6c9d192c12",
  "source": {
    "blob": "3803080067a054bdb580f6394aca947b7f1d681e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant1735f1835734d64cfaed9a4622e0bf3f10025d74b812e284b2d22627414f142a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:906742207f40ac6c9d192c122fab09c5451633832ec330457b19044a0450cb7f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant1735f1835734d64cfaed9a4622e0bf3f10025d74b812e284b2d22627414f142a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:361b4493-8373-0eee-5f2b-b1ca18f5f626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedPrimitiveBump_deriv_odd {A : ℝ} (hA : 0 < A) (x : ℝ) :
    deriv (normalizedPrimitiveBump A) (-x) = -deriv (normalizedPrimitiveBump A) x := by
  rw [normalizedPrimitiveBump_deriv hA]
  have hm : -x ∈ Icc (-A) A ↔ x ∈ Icc (-A) A := by
    simp only [mem_Icc]
    constructor <;> rintro ⟨h1,h2⟩ <;> constructor <;> linarith
  simp only [firstDerivative, indicator_apply, hm]
  split_ifs
  · simp only [firstInterior, neg_div]
    ring
  · simp

/-- The reflected pair of actual causal tails cancels to the negative bump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant1735f1835734d64cfaed9a4622e0bf3f10025d74b812e284b2d22627414f142a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixturesV1Prebytes/Variant1735f1835734d64cfaed9a4622e0bf3f10025d74b812e284b2d22627414f142a.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3803080067a054bdb580f6394aca947b7f1d681e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
