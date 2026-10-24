# csSup_mem_of_not_isSuccPrelimit'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e91cb5597013b5a4f3e2c53b930a022c2dee1fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:493c2ca6-dd81-0b6a-5043-adaaef384698",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d22f1b4-36eb-db81-dd40-252ce50b869c",
  "kind": "lemma",
  "lexical_name": "csSup_mem_of_not_isSuccPrelimit'",
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
  "slug": "cssup-mem-of-not-issuccprelimit--ac9cb3539417df34a6318b9b",
  "source": {
    "blob": "1e91cb5597013b5a4f3e2c53b930a022c2dee1fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac9cb3539417df34a6318b9bb70124f109154f586bc68b7f0d48ae63ce0974db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d22f1b4-36eb-db81-dd40-252ce50b869c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma csSup_mem_of_not_isSuccPrelimit'
    (hbdd : BddAbove s) (hlim : ¬ IsSuccPrelimit (sSup s)) : sSup s ∈ s := by
  obtain rfl | hs := s.eq_empty_or_nonempty
  · simp [isSuccPrelimit_bot] at hlim
  · exact csSup_mem_of_not_isSuccPrelimit hs hbdd hlim

/-- See `exists_eq_ciSup_of_not_isSuccPrelimit` for the
`ConditionallyCompleteLinearOrder` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLinearOrder/Variant27abcfdbb7f0a899781f1994d63b2fbb8d59efe37a7d00a55df0567b422f5441.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e91cb5597013b5a4f3e2c53b930a022c2dee1fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
