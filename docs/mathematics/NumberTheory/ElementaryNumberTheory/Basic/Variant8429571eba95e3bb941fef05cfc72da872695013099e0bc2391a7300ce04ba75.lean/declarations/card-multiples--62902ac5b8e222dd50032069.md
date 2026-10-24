# card_multiples'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:067372dc-fd40-b965-1f0c-af2693075c23",
  "kind": "lemma",
  "lexical_name": "card_multiples'",
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
  "slug": "card-multiples--62902ac5b8e222dd50032069",
  "source": {
    "blob": "f9d5401d58708fe65e2b8b2cb94310a0513f412b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 604,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant8429571eba95e3bb941fef05cfc72da872695013099e0bc2391a7300ce04ba75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62902ac5b8e222dd50032069fb9c0ffe804442a8bbb6a83f19a3699c50d65afd",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant8429571eba95e3bb941fef05cfc72da872695013099e0bc2391a7300ce04ba75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:067372dc-fd40-b965-1f0c-af2693075c23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_multiples' (N n : ℕ) : #{k ∈ range N.succ | k ≠ 0 ∧ n ∣ k} = N / n := by
  induction N with
    | zero => simp [Finset.filter_false_of_mem]
    | succ N ih =>
        rw [Finset.range_succ, Finset.filter_insert]
        by_cases h : n ∣ N.succ
        · simp [h, succ_div_of_dvd, ih]
        · simp [h, succ_div_of_not_dvd, ih]

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant8429571eba95e3bb941fef05cfc72da872695013099e0bc2391a7300ce04ba75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant8429571eba95e3bb941fef05cfc72da872695013099e0bc2391a7300ce04ba75.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9d5401d58708fe65e2b8b2cb94310a0513f412b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
