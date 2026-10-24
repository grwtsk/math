# withDensity_rnDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d98caa9313702433d2d7cf7490297d054b34b3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb4ef39f-d882-53bd-b526-8733446883f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:47ec98f3-8c57-d79a-54dd-2826e5d1af93",
  "kind": "theorem",
  "lexical_name": "withDensity_rnDeriv",
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
  "slug": "withdensity-rnderiv--188c5bb8afce6bcded5b07c4",
  "source": {
    "blob": "0d98caa9313702433d2d7cf7490297d054b34b3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:188c5bb8afce6bcded5b07c41fac1833c2ed63eeb82b260a26816bb314069db5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/RadonNikodym/Variantb500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47ec98f3-8c57-d79a-54dd-2826e5d1af93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem withDensity_rnDeriv [SigmaFinite ν] {f : X → X}
    (hfμ : MeasurePreserving f μ μ) (hfν : MeasurePreserving f ν ν) :
    MeasurePreserving f (ν.withDensity (μ.rnDeriv ν)) (ν.withDensity (μ.rnDeriv ν)) := by
  use hfμ.measurable
  ext s hs
  rw [← ENNReal.add_left_inj (measure_ne_top (μ.singularPart ν) s), map_apply hfμ.measurable hs,
    ← add_apply, rnDeriv_add_singularPart,
    ← (hfμ.singularPart hfν).measure_preimage hs.nullMeasurableSet, ← add_apply,
    rnDeriv_add_singularPart, hfμ.measure_preimage hs.nullMeasurableSet]

/-- The Radon-Nikodym derivative of a finite invariant measure of a self-map `f`
with respect to another finite invariant measure of `f` is a.e. invariant under `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/RadonNikodym/Variantb500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variantb500c6237ccdc61598dde81b2dd0d019ef25fbe42e8e9ccc97953105b1e0d9a1.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d98caa9313702433d2d7cf7490297d054b34b3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
