# dilate_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12b4f300-db7d-df54-57ec-e6d9797669af",
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
  "slug": "dilate-comp--e9b1ddabcc04702a5f1c7b98",
  "source": {
    "blob": "167ac06c6a408c5f6ffeabfc1d4bc72141ee6b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant0d72d182f70595ae5c98436a281646c6315226188db97e80e984e736ef66ad3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9b1ddabcc04702a5f1c7b989e946d51bf57dbe640170f29970ed890a61b189c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant0d72d182f70595ae5c98436a281646c6315226188db97e80e984e736ef66ad3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12b4f300-db7d-df54-57ec-e6d9797669af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–96.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant0d72d182f70595ae5c98436a281646c6315226188db97e80e984e736ef66ad3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt06/Variant0d72d182f70595ae5c98436a281646c6315226188db97e80e984e736ef66ad3f.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `167ac06c6a408c5f6ffeabfc1d4bc72141ee6b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
