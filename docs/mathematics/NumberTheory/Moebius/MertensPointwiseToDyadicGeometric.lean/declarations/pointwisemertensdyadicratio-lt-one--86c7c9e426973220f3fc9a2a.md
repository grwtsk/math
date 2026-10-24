# pointwiseMertensDyadicRatio_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19c9f606-64bf-79d1-48d0-95c69efac67a",
  "kind": "theorem",
  "lexical_name": "pointwiseMertensDyadicRatio_lt_one",
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
  "slug": "pointwisemertensdyadicratio-lt-one--86c7c9e426973220f3fc9a2a",
  "source": {
    "blob": "c733396529d16479328faf49cf014faa96699ad6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86c7c9e426973220f3fc9a2a1ec5f098801eacede2140596932a71740dafc682",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19c9f606-64bf-79d1-48d0-95c69efac67a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pointwiseMertensDyadicRatio_lt_one
    {δ : ℝ} (hδ : 0 < δ) :
    pointwiseMertensDyadicRatio δ < 1 := by
  unfold pointwiseMertensDyadicRatio
    pointwiseMertensDyadicConstantFactor
  have hpow :
      1 < (2 : ℝ) ^ pointwiseMertensDyadicExponent δ :=
    Real.one_lt_rpow (by norm_num)
      (pointwiseMertensDyadicExponent_pos hδ)
  exact (inv_lt_one₀ (by positivity)).2 hpow

/-- Cast/floor comparison for any descendant bounded by `floor(b/2^t)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensPointwiseToDyadicGeometric.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c733396529d16479328faf49cf014faa96699ad6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
