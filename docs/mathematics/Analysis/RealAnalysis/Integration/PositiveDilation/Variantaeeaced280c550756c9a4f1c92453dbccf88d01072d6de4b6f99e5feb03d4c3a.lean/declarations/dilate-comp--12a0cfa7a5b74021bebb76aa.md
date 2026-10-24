# dilate_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:553a79a9-31e5-e785-521f-2af5bcf62030",
  "kind": "theorem",
  "lexical_name": "dilate_comp",
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
  "slug": "dilate-comp--12a0cfa7a5b74021bebb76aa",
  "source": {
    "blob": "38b72e207beb69988f94fdb6aa2134ca904c5c93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a0cfa7a5b74021bebb76aab268f01ee2b2e04875ee2316848cee777acfa482",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:553a79a9-31e5-e785-521f-2af5bcf62030`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilate_comp {a b : ℝ} (ha : 0 < a) (hb : 0 < b) (f : PositiveL2) :
    dilate a ha (dilate b hb f) = dilate (a*b) (mul_pos ha hb) f := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha (dilate b hb f),
    (positive_mul_quasi ha).ae_eq_comp (dilate_ae b hb f),
    dilate_ae (a*b) (mul_pos ha hb) f] with x hx hy hz
  dsimp only [Function.comp_apply] at hy
  rw [hx,hz,dilateFunc]
  rw [hy,dilateFunc,←mul_assoc,←Complex.ofReal_mul,←Real.sqrt_mul ha.le]
  congr 2
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38b72e207beb69988f94fdb6aa2134ca904c5c93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
