# Function.Injective.isOrderedMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c459b572c1568f12512a4ffc0d555d6c2762d1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:789e2e36-952b-176e-5b57-44385335e094",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bfa90219-b841-39ea-c711-91540c10c655",
  "kind": "lemma",
  "lexical_name": "Function.Injective.isOrderedMonoid",
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
  "slug": "function-injective-isorderedmonoid--568284467161d3d947668488",
  "source": {
    "blob": "4c459b572c1568f12512a4ffc0d555d6c2762d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 25,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:568284467161d3d947668488bcb7e85b050d14e169ffa6619ef6f5aa15f3ead7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfa90219-b841-39ea-c711-91540c10c655`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Function.Injective.isOrderedMonoid [IsOrderedMonoid α] [One β] [Mul β]
    [Pow β ℕ] (f : β → α) (hf : Function.Injective f) (one : f 1 = 1)
    (mul : ∀ x y, f (x * y) = f x * f y) (npow : ∀ (x) (n : ℕ), f (x ^ n) = f x ^ n) :
    let _ : CommMonoid β := hf.commMonoid f one mul npow
    let _ : PartialOrder β := PartialOrder.lift f hf
    IsOrderedMonoid β :=
  let _ : CommMonoid β := hf.commMonoid f one mul npow
  let _ : PartialOrder β := PartialOrder.lift f hf
  { mul_le_mul_left a b ab c := show f (c * a) ≤ f (c * b) by
      rw [mul, mul]; apply mul_le_mul_left'; exact ab }

/-- Pullback an `IsOrderedCancelMonoid` under an injective map. -/
@[to_additive Function.Injective.isOrderedCancelAddMonoid
    "Pullback an `IsOrderedCancelAddMonoid` under an injective map."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant66ea8d5482f60c56b0ec497e3fcb0b0a9563acb420ba0649e841739785e415ba.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c459b572c1568f12512a4ffc0d555d6c2762d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
