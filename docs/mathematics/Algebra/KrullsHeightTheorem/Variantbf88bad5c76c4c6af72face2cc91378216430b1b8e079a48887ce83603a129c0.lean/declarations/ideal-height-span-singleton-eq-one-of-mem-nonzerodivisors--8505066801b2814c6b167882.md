# Ideal.height_span_singleton_eq_one_of_mem_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0424bae-a48e-bf3a-3775-e0c73697afc1",
  "kind": "lemma",
  "lexical_name": "Ideal.height_span_singleton_eq_one_of_mem_nonZeroDivisors",
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
  "slug": "ideal-height-span-singleton-eq-one-of-mem-nonzerodivisors--8505066801b2814c6b167882",
  "source": {
    "blob": "94eba5d2ebfd024e76812a0c01883d73bfef1add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8505066801b2814c6b16788234db4614e3f903d39e54248e7d1d8a991b762bcf",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0424bae-a48e-bf3a-3775-e0c73697afc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.height_span_singleton_eq_one_of_mem_nonZeroDivisors {x : R}
    (hx : x ∈ nonZeroDivisors R) (hx' : ¬ IsUnit x) : (span {x}).height = 1 :=
  le_antisymm (height_span_singleton_le_one hx')
    (one_le_height_span_singleton_of_mem_nonZeroDivisors hx)

/-- If `q < p` are prime ideals such that `p` is minimal over `span (s ∪ {x})` and
`t` is a set contained in `q` such that `s ⊆ √span (t ∪ {x})`, then `q` is minimal over `span t`.
This is used in the induction step for the proof of Krull's height theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variantbf88bad5c76c4c6af72face2cc91378216430b1b8e079a48887ce83603a129c0.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94eba5d2ebfd024e76812a0c01883d73bfef1add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
