# toAddMonoidAlgebra_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e15b83fefa8c1189043a38921ef1dfa71b63eb2b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:878b63b5-aeea-e7a3-d22e-321d5c78d5f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3845635b-996b-6160-2505-ab7267761e0f",
  "kind": "theorem",
  "lexical_name": "toAddMonoidAlgebra_mul",
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
  "slug": "toaddmonoidalgebra-mul--efa2f31d7d5f8bb7429f8639",
  "source": {
    "blob": "e15b83fefa8c1189043a38921ef1dfa71b63eb2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 212,
    "path": "GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efa2f31d7d5f8bb7429f86396fa6cda0ee8e23d3291d603c3a5c299c61a8173b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3845635b-996b-6160-2505-ab7267761e0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAddMonoidAlgebra_mul [AddMonoid ι] [Semiring M]
    [∀ m : M, Decidable (m ≠ 0)] (f g : ⨁ _ : ι, M) :
    (f * g).toAddMonoidAlgebra = toAddMonoidAlgebra f * toAddMonoidAlgebra g := by
  apply_fun AddMonoidAlgebra.toDirectSum
  · simp
  · apply Function.LeftInverse.injective
    apply AddMonoidAlgebra.toDirectSum_toAddMonoidAlgebra

end DirectSum

end Lemmas

/-! ### Bundled `Equiv`s -/


section Equivs

/-- `AddMonoidAlgebra.toDirectSum` and `DirectSum.toAddMonoidAlgebra` together form an
equiv. -/
@[simps -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/ToDirectSum/Variant4172fafc03ef1b6a572e6f2082dec7cdb01ad37229ba999ad9a2ea51fdea162c.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e15b83fefa8c1189043a38921ef1dfa71b63eb2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
