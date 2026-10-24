# signed_child_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8de0394-590f-78af-ceac-fe46c51d661d",
  "kind": "theorem",
  "lexical_name": "signed_child_difference",
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
  "slug": "signed-child-difference--5d5de354f6b59d5d0b1265f7",
  "source": {
    "blob": "6edec918598b27fd4b794012cfc60b36fdd0178a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 88,
    "path": "GRWTSK/Analysis/FiniteSum/TentReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d5de354f6b59d5d0b1265f7b500b180d237574f4d4f786d2841d576d48882e2",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteSums/TentReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8de0394-590f-78af-ceac-fe46c51d661d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_child_difference {ι : Type*} (s : Finset ι) (w r : ι → ℝ)
    (a h backgroundLeft backgroundRight : ℝ) (hh : 0<h) :
    ((∑ i∈s, w i*stepCellMean a (a+h/2) (r i))-backgroundLeft)-
      ((∑ i∈s, w i*stepCellMean (a+h/2) (a+h) (r i))-backgroundRight)
      = -signedReadout s w r a h backgroundLeft backgroundRight := by
  have he : (∑ i∈s, w i*stepCellMean a (a+h/2) (r i))-
      (∑ i∈s, w i*stepCellMean (a+h/2) (a+h) (r i))=
      -(∑ i∈s, w i*tent a h (r i)) := by
    rw [← Finset.sum_sub_distrib]
    simp_rw [← mul_sub,child_step_difference a h _ hh,mul_neg,Finset.sum_neg_distrib]
  unfold signedReadout
  linarith

/-- One split, with the original center retained and no factor-two loss. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteSums/TentReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteSum/TentReadout.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6edec918598b27fd4b794012cfc60b36fdd0178a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
