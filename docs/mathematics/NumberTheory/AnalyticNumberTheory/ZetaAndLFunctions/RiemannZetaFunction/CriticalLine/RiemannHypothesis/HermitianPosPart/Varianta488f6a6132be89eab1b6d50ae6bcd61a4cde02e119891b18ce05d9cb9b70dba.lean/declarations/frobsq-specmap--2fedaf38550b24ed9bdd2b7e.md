# frobSq_specMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbbd2f1cf33c599984ca27e5c0072000ca51319b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e62847d3-b825-6322-e225-e39499ab7ee7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e7747e2-5d23-1bf7-3b27-25db0c7ec99f",
  "kind": "lemma",
  "lexical_name": "frobSq_specMap",
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
  "slug": "frobsq-specmap--2fedaf38550b24ed9bdd2b7e",
  "source": {
    "blob": "bbbd2f1cf33c599984ca27e5c0072000ca51319b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 109,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fedaf38550b24ed9bdd2b7ed4dfabc9b41c5c916396709e223f8cdf85e7a265",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e7747e2-5d23-1bf7-3b27-25db0c7ec99f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma frobSq_specMap {A : Matrix n n 𝕜} (hA : A.IsHermitian) (f : ℝ → ℝ) :
    frobSq (specMap hA f) = ∑ i, (f (hA.eigenvalues i)) ^ 2 := by
  unfold frobSq
  rw [(specMap_isHermitian hA f).eq, ← specMap_mul,
    show (f * f : ℝ → ℝ) = fun x => (f x) ^ 2 from funext fun x => by
      simp only [Pi.mul_apply, sq]]
  exact rtrace_specMap hA _

/-- The rank of `specMap hA f` is the number of `i` with `f(λᵢ) ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HermitianPosPart/Varianta488f6a6132be89eab1b6d50ae6bcd61a4cde02e119891b18ce05d9cb9b70dba.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbd2f1cf33c599984ca27e5c0072000ca51319b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
