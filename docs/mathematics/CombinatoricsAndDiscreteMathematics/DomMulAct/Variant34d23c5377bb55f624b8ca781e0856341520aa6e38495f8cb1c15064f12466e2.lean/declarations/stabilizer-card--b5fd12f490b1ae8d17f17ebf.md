# stabilizer_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e722bb92687c512fe3dac450ee241b873fc8dfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71d4bb56-e82d-d066-66e4-fe09756b33d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbe27bbc-fd62-92cd-5e06-9996b1f93b7d",
  "kind": "theorem",
  "lexical_name": "stabilizer_card",
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
  "slug": "stabilizer-card--b5fd12f490b1ae8d17f17ebf",
  "source": {
    "blob": "5e722bb92687c512fe3dac450ee241b873fc8dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5fd12f490b1ae8d17f17ebfb2dafdf9071bfb4793ca4ae96949c00ba1fe6c94",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbe27bbc-fd62-92cd-5e06-9996b1f93b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stabilizer_card [DecidableEq α] [DecidableEq ι] [Fintype ι] :
    Fintype.card {g : Perm α // f ∘ g = f} = ∏ i, (Fintype.card {a // f a = i})! := by
  -- rewriting via Nat.card because Fintype instance is not found
  rw [← Nat.card_eq_fintype_card,
    Nat.card_congr (subtypeEquiv mk fun _ ↦ ?_),
    Nat.card_congr MulOpposite.opEquiv,
    Nat.card_congr (DomMulAct.stabilizerMulEquiv f).toEquiv, Nat.card_pi]
  · exact Finset.prod_congr rfl fun i _ ↦ by rw [Nat.card_eq_fintype_card, Fintype.card_perm]
  · rfl

omit [Fintype α] in
/-- The cardinality of the set of permutations preserving a function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e722bb92687c512fe3dac450ee241b873fc8dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
