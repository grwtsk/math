# GroupSMul.linearMap_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a79ba61d486939ea9070cfc44894b0417212565a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5628aa1-746f-da75-73b5-96bddd8f4d17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba904c40-6902-2c8b-4213-e0df61ac86f8",
  "kind": "theorem",
  "lexical_name": "GroupSMul.linearMap_apply",
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
  "slug": "groupsmul-linearmap-apply--9d860f33687e9e3dec2d43fa",
  "source": {
    "blob": "a79ba61d486939ea9070cfc44894b0417212565a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 308,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d860f33687e9e3dec2d43fa0300572c0fdffd920360bef2069a3367b85afcff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba904c40-6902-2c8b-4213-e0df61ac86f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GroupSMul.linearMap_apply [Monoid G] [CommSemiring k] (V : Type u₃) [AddCommMonoid V]
    [Module k V] [Module (MonoidAlgebra k G) V] [IsScalarTower k (MonoidAlgebra k G) V] (g : G)
    (v : V) : (GroupSMul.linearMap k V g) v = single g (1 : k) • v :=
  rfl

section

variable {k}
variable [Monoid G] [CommSemiring k] {V : Type u₃} {W : Type u₄} [AddCommMonoid V] [Module k V]
  [Module (MonoidAlgebra k G) V] [IsScalarTower k (MonoidAlgebra k G) V] [AddCommMonoid W]
  [Module k W] [Module (MonoidAlgebra k G) W] [IsScalarTower k (MonoidAlgebra k G) W]
  (f : V →ₗ[k] W)

/-- Build a `k[G]`-linear map from a `k`-linear map and evidence that it is `G`-equivariant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b4464eb5e325368cfa561534fce5751407a4a31b0eeb4a9d19c568eeca72910.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a79ba61d486939ea9070cfc44894b0417212565a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
