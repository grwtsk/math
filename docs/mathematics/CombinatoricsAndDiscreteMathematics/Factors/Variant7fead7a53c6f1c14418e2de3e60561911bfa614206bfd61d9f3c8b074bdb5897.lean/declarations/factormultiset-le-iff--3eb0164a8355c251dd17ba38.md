# factorMultiset_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c36cb520eec71bdc6e8fdb79b0c84a30183073bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92d5e5ca-4ea7-659a-8938-6d7dfaa57e08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6755e075-e9c4-14fe-c0cb-a19c939b5132",
  "kind": "theorem",
  "lexical_name": "factorMultiset_le_iff",
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
  "slug": "factormultiset-le-iff--3eb0164a8355c251dd17ba38",
  "source": {
    "blob": "c36cb520eec71bdc6e8fdb79b0c84a30183073bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 324,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eb0164a8355c251dd17ba38a2eada2e29b7eca9fcdf8dbcac4794dcb5586cf7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6755e075-e9c4-14fe-c0cb-a19c939b5132`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorMultiset_le_iff {m n : ℕ+} : factorMultiset m ≤ factorMultiset n ↔ m ∣ n := by
  constructor
  · intro h
    rw [← prod_factorMultiset m, ← prod_factorMultiset m]
    apply Dvd.intro (n.factorMultiset - m.factorMultiset).prod
    rw [← PrimeMultiset.prod_add, PrimeMultiset.factorMultiset_prod, add_tsub_cancel_of_le h,
      prod_factorMultiset]
  · intro h
    rw [← mul_div_exact h, factorMultiset_mul]
    exact le_self_add
#align pnat.factor_multiset_le_iff PNat.factorMultiset_le_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c36cb520eec71bdc6e8fdb79b0c84a30183073bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
