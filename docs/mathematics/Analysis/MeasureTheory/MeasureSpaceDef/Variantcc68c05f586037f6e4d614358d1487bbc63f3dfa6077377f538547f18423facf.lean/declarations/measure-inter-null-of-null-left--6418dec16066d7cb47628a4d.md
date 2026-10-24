# measure_inter_null_of_null_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6301df4-b1a0-4d15-3eec-d4021b4c8efb",
  "kind": "theorem",
  "lexical_name": "measure_inter_null_of_null_left",
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
  "slug": "measure-inter-null-of-null-left--6418dec16066d7cb47628a4d",
  "source": {
    "blob": "8a4607dc15e429f7164e9a82008c2baf375c582e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 275,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6418dec16066d7cb47628a4d94f4f3c647678369ccb491b243da0052d938324f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6301df4-b1a0-4d15-3eec-d4021b4c8efb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_inter_null_of_null_left {S : Set α} (T : Set α) (h : μ S = 0) : μ (S ∩ T) = 0 :=
  measure_mono_null inter_subset_left h

/-! ### The almost everywhere filter -/
section ae

/-- Given a predicate on `β` and `Set α` where both `α` and `β` are measurable spaces, if the
predicate holds for almost every `x : β` and
- `∅ : Set α`
- a family of sets generating the σ-algebra of `α`
Moreover, if for almost every `x : β`, the predicate is closed under complements and countable
disjoint unions, then the predicate holds for almost every `x : β` and all measurable sets of `α`.

This is an AE version of `MeasurableSpace.induction_on_inter` where the condition is dependent
on a measurable space `β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variantcc68c05f586037f6e4d614358d1487bbc63f3dfa6077377f538547f18423facf.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a4607dc15e429f7164e9a82008c2baf375c582e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
