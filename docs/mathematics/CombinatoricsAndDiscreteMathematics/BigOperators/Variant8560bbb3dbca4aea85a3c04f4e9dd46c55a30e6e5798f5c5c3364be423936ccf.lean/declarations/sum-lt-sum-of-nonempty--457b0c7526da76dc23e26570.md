# sum_lt_sum_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b0c173f-3ebd-45a7-cdb5-1958e8c36762",
  "kind": "theorem",
  "lexical_name": "sum_lt_sum_of_nonempty",
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
  "slug": "sum-lt-sum-of-nonempty--457b0c7526da76dc23e26570",
  "source": {
    "blob": "34944db3f529ba9a651f79824b82660a80af28cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:457b0c7526da76dc23e265708150a9ddd65ff96a78613071c1a22a294b0a1a9f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b0c173f-3ebd-45a7-cdb5-1958e8c36762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_lt_sum_of_nonempty {s : Finset α} (hs : s.Nonempty) {f g : α → ℝ≥0∞}
    (Hlt : ∀ i ∈ s, f i < g i) : ∑ i ∈ s, f i < ∑ i ∈ s, g i := by
  induction hs using Finset.Nonempty.cons_induction with
  | singleton => simp [Hlt _ (Finset.mem_singleton_self _)]
  | cons _ _ _ _ ih =>
    simp only [Finset.sum_cons, forall_mem_cons] at Hlt ⊢
    exact ENNReal.add_lt_add Hlt.1 (ih Hlt.2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34944db3f529ba9a651f79824b82660a80af28cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
