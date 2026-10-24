# bernsteinSum_succ_eq_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0dd571aa754fd22d191a589893ded77af7fbb055",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/43/43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54ac994a-0ca9-7e05-cb3a-bb25b8cd93eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de339b4b-2eb4-206e-a05a-c557260996ff",
  "kind": "lemma",
  "lexical_name": "bernsteinSum_succ_eq_step",
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
  "slug": "bernsteinsum-succ-eq-step--08543adcd3a5e413d84f0a12",
  "source": {
    "blob": "0dd571aa754fd22d191a589893ded77af7fbb055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 81,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08543adcd3a5e413d84f0a123251656e84643b2c101b47817258d58adc580bc7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de339b4b-2eb4-206e-a05a-c557260996ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bernsteinSum_succ_eq_step (n : ℕ) (p : ControlRow M) (t : ℝ) :
    bernsteinSum (n + 1) p t = bernsteinSum n (step t p) t := by
  unfold bernsteinSum step
  have hdistrib (i : Fin (n + 1)) :
      bernsteinWeight n i t •
          ((1 - t) • p i + t • p (i + 1)) =
        (1 - t) • bernsteinWeight n i t • p i +
          t • bernsteinWeight n i t • p (i + 1) := by
    module
  simp_rw [hdistrib]
  rw [Fin.sum_univ_succ]
  simp only [Fin.val_zero]
  rw [bernsteinWeight_zero_succ]
  have hweight (i : Fin (n + 1)) :
      bernsteinWeight (n + 1) i.succ t =
        t * bernsteinWeight n i t +
          (1 - t) * bernsteinWeight n (i + 1) t := by
    simpa using bernsteinWeight_succ_succ n i (Fin.is_le i) t
  simp_rw [hweight, add_smul, mul_smul]
  rw [Finset.sum_add_distrib, Finset.sum_add_distrib]
  rw [shifted_bernsteinWeight_sum]
  conv_rhs =>
    enter [1]
    rw [Fin.sum_univ_succ]
  simp only [Fin.val_zero, Fin.val_succ]
  abel

/-- Arbitrary-degree de Casteljau evaluation equals its closed scalar
Bernstein sum for every real parameter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Subdivision/Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Subdivision/Variant43980d73230ca0aa22045699b4116a6e93e11ee1508cc1b952b5ae3879122a30.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dd571aa754fd22d191a589893ded77af7fbb055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
