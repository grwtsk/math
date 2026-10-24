# intCast_nat_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df06ba54411c49d84f6ced50cd807d2544716fe9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:767315f0-ac79-b247-1d3e-d87762c2ab03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1d82314b-7c3b-58da-3222-b9da3bd4635c",
  "kind": "theorem",
  "lexical_name": "intCast_nat_sub",
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
  "slug": "intcast-nat-sub--533b29a481e93134d4db7ce9",
  "source": {
    "blob": "df06ba54411c49d84f6ced50cd807d2544716fe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 275,
    "path": "GRWTSK/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:533b29a481e93134d4db7ce9c4cb723cf15054f82a9ca4ca32e82ac5be988630",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d82314b-7c3b-58da-3222-b9da3bd4635c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intCast_nat_sub {x y : Nat} (h : x ≥ y) : (((x - y : Nat) : Int) : α) = ((x : α) - (y : α)) := by
  induction x with
  | zero =>
    have : y = 0 := by omega
    simp [this, intCast_zero, natCast_zero, sub_eq_add_neg, zero_add, neg_zero]
  | succ x ih =>
    by_cases h : x + 1 = y
    · simp [h, intCast_zero, sub_self]
    · have : ((x + 1 - y : Nat) : Int) = (x - y : Nat) + 1 := by omega
      rw [this, intCast_natCast_add_one]
      specialize ih (by omega)
      rw [intCast_natCast] at ih
      rw [ih, natCast_succ, sub_eq_add_neg, sub_eq_add_neg, add_assoc,
        AddCommMonoid.add_comm _ 1, ← add_assoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante20b816a722fc9003146396183d3af2af5394bc4725ca6a8b12f122b806f8df1.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df06ba54411c49d84f6ced50cd807d2544716fe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
