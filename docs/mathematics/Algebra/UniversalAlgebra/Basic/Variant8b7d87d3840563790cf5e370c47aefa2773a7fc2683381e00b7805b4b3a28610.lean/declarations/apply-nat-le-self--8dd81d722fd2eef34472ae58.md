# apply_nat_le_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "012dfcde951ee1cd637568ea888de7ece7c622cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2085319a-4790-96e0-392d-2067e74e4847",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a1b2016-6493-e24f-ce16-487cc086029f",
  "kind": "lemma",
  "lexical_name": "apply_nat_le_self",
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
  "slug": "apply-nat-le-self--8dd81d722fd2eef34472ae58",
  "source": {
    "blob": "012dfcde951ee1cd637568ea888de7ece7c622cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 178,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dd81d722fd2eef34472ae585d8ba5ddb6a265b57acfd71ee5bef60b03295e95",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a1b2016-6493-e24f-ce16-487cc086029f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_nat_le_self [IsOrderedRing S] (n : ℕ) : abv n ≤ n := by
  cases subsingleton_or_nontrivial R
  · simp [Subsingleton.eq_zero (n : R)]
  induction n with
  | zero => simp
  | succ n hn =>
    simp only [Nat.cast_succ]
    calc
      abv (n + 1) ≤ abv n + abv 1 := abv.add_le ..
      _ = abv n + 1 := congrArg (abv n + ·) abv.map_one
      _ ≤ n + 1 := add_le_add_right hn 1

end IsDomain

end Semiring

end OrderedSemiring

section OrderedRing

section Ring

variable {R S : Type*} [Ring R] [Ring S] [PartialOrder S] [IsOrderedRing S]
  (abv : AbsoluteValue R S)

@[bound]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant8b7d87d3840563790cf5e370c47aefa2773a7fc2683381e00b7805b4b3a28610.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `012dfcde951ee1cd637568ea888de7ece7c622cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
