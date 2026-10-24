# admissible_of_one_lt_sumInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d066351a45adcbb98ce507c8defbbfd835bb4a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/02/022a06358c9d34547137744d7f4ee5f55696dd0343ac84f786b646d8f91fea0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98771cab-883c-357f-e15d-5caac11ba04d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1cb212b0-64fb-e045-04c7-8b8eca31adcc",
  "kind": "theorem",
  "lexical_name": "admissible_of_one_lt_sumInv",
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
  "slug": "admissible-of-one-lt-suminv--558f795b9f6283f2d9d7b61b",
  "source": {
    "blob": "8d066351a45adcbb98ce507c8defbbfd835bb4a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 229,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant022a06358c9d34547137744d7f4ee5f55696dd0343ac84f786b646d8f91fea0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:558f795b9f6283f2d9d7b61b2441c4dad1593ccba42accf7cdec92d286944e77",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant022a06358c9d34547137744d7f4ee5f55696dd0343ac84f786b646d8f91fea0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb212b0-64fb-e045-04c7-8b8eca31adcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem admissible_of_one_lt_sumInv {p q r : ℕ+} (H : 1 < sumInv {p, q, r}) :
    Admissible {p, q, r} := by
  simp only [Admissible]
  let S := sort ((· ≤ ·) : ℕ+ → ℕ+ → Prop) {p, q, r}
  have hS : S.Sorted (· ≤ ·) := sort_sorted _ _
  have hpqr : ({p, q, r} : Multiset ℕ+) = S := (sort_eq LE.le {p, q, r}).symm
  rw [hpqr]
  rw [hpqr] at H
  apply admissible_of_one_lt_sumInv_aux hS _ H
  simp only [S, insert_eq_cons, length_sort, card_cons, card_singleton]

/-- A multiset `{p,q,r}` of positive natural numbers
is a solution to `(p⁻¹ + q⁻¹ + r⁻¹ : ℚ) > 1` if and only if
it is `admissible` which means it is one of:

* `A' q r := {1,q,r}`
* `D' r := {2,2,r}`
* `E6 := {2,3,3}`, or `E7 := {2,3,4}`, or `E8 := {2,3,5}`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant022a06358c9d34547137744d7f4ee5f55696dd0343ac84f786b646d8f91fea0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant022a06358c9d34547137744d7f4ee5f55696dd0343ac84f786b646d8f91fea0f.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d066351a45adcbb98ce507c8defbbfd835bb4a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
