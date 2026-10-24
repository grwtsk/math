# dilate_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:092180af-e035-1c13-eb91-8f9161f627c9",
  "kind": "theorem",
  "lexical_name": "dilate_add",
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
  "slug": "dilate-add--3b88d32978bdeb74267c9ea2",
  "source": {
    "blob": "45cc80b9b888177fa8e633e5693ae43b802d2254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b88d32978bdeb74267c9ea29223501bde621ac9d8a27374f397905315059dc0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:092180af-e035-1c13-eb91-8f9161f627c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dilate_add {a : ℝ} (ha : 0 < a) (f g : PositiveL2) :
    dilate a ha (f+g) = dilate a ha f + dilate a ha g := by
  apply Lp.ext
  filter_upwards [dilate_ae a ha (f+g),dilate_ae a ha f,dilate_ae a ha g,
    Lp.coeFn_add (dilate a ha f) (dilate a ha g),
    (positive_mul_quasi ha).ae_eq_comp (Lp.coeFn_add f g)] with x hfg hf hg hadd hp
  dsimp only [Pi.add_apply,Function.comp_apply] at hadd hp
  rw [hfg,hadd,hf,hg,dilateFunc,dilateFunc,dilateFunc,hp]
  exact mul_add _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt08/Variant3dba9bbcb321e25f22c65236e432fa8345503f03ba9e5e39adea68439d64e6fb.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45cc80b9b888177fa8e633e5693ae43b802d2254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
