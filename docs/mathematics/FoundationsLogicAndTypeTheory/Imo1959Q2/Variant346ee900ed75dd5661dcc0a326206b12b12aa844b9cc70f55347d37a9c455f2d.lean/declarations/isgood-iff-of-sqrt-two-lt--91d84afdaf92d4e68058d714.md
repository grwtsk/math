# isGood_iff_of_sqrt_two_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0325f5e80b580b9181dd110378a1b5608a41d567",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:809bcd63-9e5f-fe3e-a6a2-076b71546ae1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09cd451a-8532-d6a7-ec73-e1f0da324272",
  "kind": "theorem",
  "lexical_name": "isGood_iff_of_sqrt_two_lt",
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
  "slug": "isgood-iff-of-sqrt-two-lt--91d84afdaf92d4e68058d714",
  "source": {
    "blob": "0325f5e80b580b9181dd110378a1b5608a41d567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91d84afdaf92d4e68058d71409f96ef75c8fda6ea772997866f0c4f4591768cb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09cd451a-8532-d6a7-ec73-e1f0da324272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isGood_iff_of_sqrt_two_lt (hA : sqrt 2 < A) : IsGood x A ↔ x = (A / 2) ^ 2 + 1 / 2 := by
  have : 0 < A := lt_trans (by simp) hA
  constructor
  · intro h
    have hx : 1 < x := by rwa [h.sqrt_two_lt_iff_one_lt] at hA
    rw [isGood_iff_eq_sqrt hx, eq_comm, sqrt_eq_iff_eq_sq] at h <;> linarith
  · rintro rfl
    rw [isGood_iff_eq_sqrt]
    · conv_lhs => rw [← sqrt_sq this.le]
      ring_nf
    · rw [sqrt_lt' this] at hA
      linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Imo1959Q2/Variant346ee900ed75dd5661dcc0a326206b12b12aa844b9cc70f55347d37a9c455f2d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0325f5e80b580b9181dd110378a1b5608a41d567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
