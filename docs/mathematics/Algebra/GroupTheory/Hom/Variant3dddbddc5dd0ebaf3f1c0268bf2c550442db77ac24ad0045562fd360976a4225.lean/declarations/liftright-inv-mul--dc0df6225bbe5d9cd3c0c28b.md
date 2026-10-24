# liftRight_inv_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c21848c556ce937bfc9332580bb4cc5bae45721",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e78e3090-e97d-d737-70c1-106135a48272",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b4093ae-d97c-0173-c592-809fbaca9c71",
  "kind": "theorem",
  "lexical_name": "liftRight_inv_mul",
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
  "slug": "liftright-inv-mul--dc0df6225bbe5d9cd3c0c28b",
  "source": {
    "blob": "2c21848c556ce937bfc9332580bb4cc5bae45721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 209,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc0df6225bbe5d9cd3c0c28b8c6a7c84033deb2f278b66747ec49ca494c54175",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b4093ae-d97c-0173-c592-809fbaca9c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftRight_inv_mul (f : M →* N) (h : ∀ x, IsUnit (f x)) (x) :
    ↑(IsUnit.liftRight f h x)⁻¹ * f x = 1 := Units.liftRight_inv_mul (by intro; rfl) x

end Monoid
end IsUnit

section IsLocalHom

variable {G R S T F : Type*}

variable [Monoid R] [Monoid S] [Monoid T] [FunLike F R S]

/-- A local ring homomorphism is a map `f` between monoids such that `a` in the domain
  is a unit if `f a` is a unit for any `a`. See `IsLocalRing.local_hom_TFAE` for other equivalent
  definitions in the local ring case - from where this concept originates, but it is useful in
  other contexts, so we allow this generalisation in mathlib. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c21848c556ce937bfc9332580bb4cc5bae45721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
