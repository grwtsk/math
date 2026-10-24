# bernoulliMeasure_apply_of_notMem_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c79ebdb7-0097-7dba-0fee-c5f32e93f9b1",
  "kind": "lemma",
  "lexical_name": "bernoulliMeasure_apply_of_notMem_of_notMem",
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
  "slug": "bernoullimeasure-apply-of-notmem-of-notmem--bba518254dd056ffd514b028",
  "source": {
    "blob": "36718b25a3ee52e76c4b7eb0b3103bf48a974705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bba518254dd056ffd514b028f700e0742435b8e819b88ee3f2ce47a478c4bbef",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c79ebdb7-0097-7dba-0fee-c5f32e93f9b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bernoulliMeasure_apply_of_notMem_of_notMem (p : I) {s : Set X}
    (hs : MeasurableSet s) (hx : x ∉ s) (hy : y ∉ s) :
    Ber(x, y, p) s = 0 := by
  classical
  simp_all [bernoulliMeasure_apply]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bernoulli/Variantcfcb09f17036cbae2a8371b051c0cf48cbf78330a2b6de3e42affbbe110b2e38.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36718b25a3ee52e76c4b7eb0b3103bf48a974705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
