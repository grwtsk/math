# ineq_pqr_contradiction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c28a79f-07c4-4065-c288-98377bb60697",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60dceef5-0e17-63c0-2f7f-58c535744518",
  "kind": "lemma",
  "lexical_name": "ineq_pqr_contradiction",
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
  "slug": "ineq-pqr-contradiction--6070cccbf11d05c5dd2eb5b7",
  "source": {
    "blob": "b0edeb1fa4176a31a026d229659e237d2fe7da14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 54,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6070cccbf11d05c5dd2eb5b76d29ab2fd96bc9e7f4ac95461ba21fb1074ebb8a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60dceef5-0e17-63c0-2f7f-58c535744518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma ineq_pqr_contradiction {p q r a b c : ℕ}
    (hp : 0 < p) (hq : 0 < q) (hr : 0 < r)
    (hineq : q * r + r * p + p * q ≤ p * q * r)
    (hpa : p * a < a + b + c)
    (hqb : q * b < a + b + c)
    (hrc : r * c < a + b + c) : False := by
  suffices h : p * q * r * (a + b + c) + 1 ≤ p * q * r * (a + b + c) by simp at h
  calc
    _ = (p * a) * (q * r) + (q * b) * (r * p) + (r * c) * (p * q) + 1 := by ring
    _ ≤ (a + b + c) * (q * r) + (a + b + c) * (r * p) + (a + b + c) * (p * q) := by
      rw [Nat.succ_le]
      gcongr
    _ = (q * r + r * p + p * q) * (a + b + c) := by ring
    _ ≤ _ := by gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant6c1644afa66f958490d73c452d0c3c95c0a9907a32bc2ed5323f67c19217ea7c.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0edeb1fa4176a31a026d229659e237d2fe7da14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
