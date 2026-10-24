# hasDerivAt_thetaPhi_logSlope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84c71d0145ce6fae71a9ba8bedb0e7b1220a81e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01748790-69cb-7c98-78cc-5cd4561b70c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cb2416f-3ec8-779e-a636-3b5c9ec9a712",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_thetaPhi_logSlope",
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
  "slug": "hasderivat-thetaphi-logslope--937cc2cc846b3118aebf9d6e",
  "source": {
    "blob": "84c71d0145ce6fae71a9ba8bedb0e7b1220a81e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 253,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:937cc2cc846b3118aebf9d6e140c8840fb373779dd7efccc7dbda21afd12cb94",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cb2416f-3ec8-779e-a636-3b5c9ec9a712`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDerivAt_thetaPhi_logSlope {t : ℝ} (ht : 0 ≤ t) :
    HasDerivAt (fun u : ℝ => deriv thetaPhi u / thetaPhi u)
      ((thetaPhiD2 t*thetaPhi t-thetaPhiD1 t*thetaPhiD1 t)/(thetaPhi t)^2) t := by
  convert! (hasDerivAt_deriv_thetaPhi ht).div (hasDerivAt_thetaPhi ht)
    (thetaPhi_positive t ht).ne' using 1
  simp only [deriv_thetaPhi_eq_D1 ht]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84c71d0145ce6fae71a9ba8bedb0e7b1220a81e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
