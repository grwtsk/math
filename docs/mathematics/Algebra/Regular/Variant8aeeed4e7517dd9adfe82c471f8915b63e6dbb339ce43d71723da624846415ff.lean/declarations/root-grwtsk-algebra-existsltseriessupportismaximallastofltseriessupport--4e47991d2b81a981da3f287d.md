# _root_.GRWTSK.Algebra.ExistsLtSeriesSupportIsMaximalLastOfLtSeriesSupport.Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2ff3bdd-9964-6108-a3a4-ed4bf14161e3",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.ExistsLtSeriesSupportIsMaximalLastOfLtSeriesSupport.Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_nonZeroDivisors",
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
  "slug": "root-grwtsk-algebra-existsltseriessupportismaximallastofltseriessupport--4e47991d2b81a981da3f287d",
  "source": {
    "blob": "e655b52c7968519c987ce0e8598fe9a8b5cf084d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 182,
    "path": "GRWTSK/Algebra/Regular/Variant8aeeed4e7517dd9adfe82c471f8915b63e6dbb339ce43d71723da624846415ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e47991d2b81a981da3f287d1697855fcadae1e82dea0f1437e8b547145615b3",
  "verification": {
    "reference": "docs/verification/Algebra/Regular/Variant8aeeed4e7517dd9adfe82c471f8915b63e6dbb339ce43d71723da624846415ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2ff3bdd-9964-6108-a3a4-ed4bf14161e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.ExistsLtSeriesSupportIsMaximalLastOfLtSeriesSupport.Variant05d2bd02f6eaee829d748fb45f2a319be54f8d33b8de7fbe3abc02b274acde34.ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim_of_mem_nonZeroDivisors
    {x : R} (reg : x ∈ R⁰) (hx : x ∈ maximalIdeal R) :
    ringKrullDim (R ⧸ span {x}) + 1 = ringKrullDim R :=
  ringKrullDim_quotient_span_singleton_succ_eq_ringKrullDim
    (Module.Flat.isSMulRegular_of_nonZeroDivisors reg) hx

/-- If `M` is a finite module over a Noetherian local ring `R`, `r₁, …, rₙ` is an
  `M`-sequence, then `dim M/(r₁, …, rₙ)M + n = dim M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Regular/Variant8aeeed4e7517dd9adfe82c471f8915b63e6dbb339ce43d71723da624846415ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Regular/Variant8aeeed4e7517dd9adfe82c471f8915b63e6dbb339ce43d71723da624846415ff.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e655b52c7968519c987ce0e8598fe9a8b5cf084d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
