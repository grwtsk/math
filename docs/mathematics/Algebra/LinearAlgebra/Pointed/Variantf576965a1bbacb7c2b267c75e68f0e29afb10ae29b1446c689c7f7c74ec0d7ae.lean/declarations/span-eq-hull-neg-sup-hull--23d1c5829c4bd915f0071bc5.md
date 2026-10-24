# span_eq_hull_neg_sup_hull

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcac3db2-93e5-b991-9b7a-8eba3352c45d",
  "kind": "lemma",
  "lexical_name": "span_eq_hull_neg_sup_hull",
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
  "slug": "span-eq-hull-neg-sup-hull--23d1c5829c4bd915f0071bc5",
  "source": {
    "blob": "f87a14a559c762ea68fc75b1c72223d69030ca30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 434,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23d1c5829c4bd915f0071bc51e3f5eaeaead68b5cdd663f6137a52876d61baad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcac3db2-93e5-b991-9b7a-8eba3352c45d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_eq_hull_neg_sup_hull (s : Set E) : span R s = hull R (-s) ⊔ hull R s := by
  suffices span R s = (hull R (-s) ⊔ hull R s).toSubmodule
    (by simp [isSelfNeg_iff, ← span_neg_eq_neg, sup_comm]) by simp [this]
  refine span_eq_of_le _ (fun x hx ↦ ?_) ?_
  · simpa using mem_sup_right (Submodule.subset_span hx)
  · rw [← ofSubmodule_le_ofSubmodule]
    simpa [hull_le_span] using hull_le_span R (-s)

variable (x) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pointed/Variantf576965a1bbacb7c2b267c75e68f0e29afb10ae29b1446c689c7f7c74ec0d7ae.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f87a14a559c762ea68fc75b1c72223d69030ca30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
