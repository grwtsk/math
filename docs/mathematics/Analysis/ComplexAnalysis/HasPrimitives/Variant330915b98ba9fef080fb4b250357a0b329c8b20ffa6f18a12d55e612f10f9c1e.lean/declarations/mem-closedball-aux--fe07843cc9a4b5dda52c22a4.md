# mem_closedBall_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f36a55c57f681cb4356eeba80e244525fbb7cd7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/330915b98ba9fef080fb4b250357a0b329c8b20ffa6f18a12d55e612f10f9c1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:57a5275e-9781-f45a-cceb-d17cea471304",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c67f9a2-c936-4cee-bc14-60bfba0c1916",
  "kind": "lemma",
  "lexical_name": "mem_closedBall_aux",
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
  "slug": "mem-closedball-aux--fe07843cc9a4b5dda52c22a4",
  "source": {
    "blob": "1f36a55c57f681cb4356eeba80e244525fbb7cd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 64,
    "path": "GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant330915b98ba9fef080fb4b250357a0b329c8b20ffa6f18a12d55e612f10f9c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe07843cc9a4b5dda52c22a40f3e3a0e980158160abd69bb93824342f80ed4d8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HasPrimitives/Variant330915b98ba9fef080fb4b250357a0b329c8b20ffa6f18a12d55e612f10f9c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c67f9a2-c936-4cee-bc14-60bfba0c1916`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mem_closedBall_aux (z_in_ball : z ∈ closedBall c r) (y_in_I : y ∈ Ι c.im z.im) :
    z.re + y * I ∈ closedBall c r := by
  refine le_trans ?_ (mem_closedBall.mp z_in_ball)
  rw [dist_eq_re_im, dist_eq_re_im, Real.le_sqrt (by positivity) (by positivity),
    Real.sq_sqrt (by positivity)]
  suffices (y - c.im) ^ 2 ≤ (z.im - c.im) ^ 2 by simpa
  cases mem_uIoc.mp y_in_I <;> nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/HasPrimitives/Variant330915b98ba9fef080fb4b250357a0b329c8b20ffa6f18a12d55e612f10f9c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/HasPrimitives/Variant330915b98ba9fef080fb4b250357a0b329c8b20ffa6f18a12d55e612f10f9c1e.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f36a55c57f681cb4356eeba80e244525fbb7cd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
