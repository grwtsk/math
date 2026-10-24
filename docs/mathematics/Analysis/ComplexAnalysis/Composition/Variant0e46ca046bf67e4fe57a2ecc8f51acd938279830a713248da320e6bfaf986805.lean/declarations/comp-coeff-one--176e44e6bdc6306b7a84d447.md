# comp_coeff_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcdfff3c-4f6f-d5c4-ea8d-445182420f64",
  "kind": "theorem",
  "lexical_name": "comp_coeff_one",
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
  "slug": "comp-coeff-one--176e44e6bdc6306b7a84d447",
  "source": {
    "blob": "3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 260,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:176e44e6bdc6306b7a84d4472963077656db0dffb2edf4666719ea29cdfa14fb",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcdfff3c-4f6f-d5c4-ea8d-445182420f64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_coeff_one (q : FormalMultilinearSeries 𝕜 F G) (p : FormalMultilinearSeries 𝕜 E F)
    (v : Fin 1 → E) : (q.comp p) 1 v = q 1 fun _i => p 1 v := by
  have : {Composition.ones 1} = (Finset.univ : Finset (Composition 1)) :=
    Finset.eq_univ_of_card _ (by simp [composition_card])
  simp only [FormalMultilinearSeries.comp, compAlongComposition_apply, ← this,
    Finset.sum_singleton]
  refine q.congr (by simp) fun i hi1 hi2 => ?_
  simp only [applyComposition_ones]
  exact p.congr rfl fun j _hj1 hj2 => by congr! -- Porting note: needed the stronger `congr!`

/-- Only `0`-th coefficient of `q.comp p` depends on `q 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant0e46ca046bf67e4fe57a2ecc8f51acd938279830a713248da320e6bfaf986805.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3079cda7c5ddc4afcc2dc642adb0e9f39922c0c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
