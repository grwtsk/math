# coe_ofMatrix_eq_relationMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83e36cc75fd5495178c77fe2a591b5a4619a351f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a279b6b0-cab1-b69c-b44d-828f19ff46c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d315bf8-090a-f927-63b9-cceb9cc78e0c",
  "kind": "theorem",
  "lexical_name": "coe_ofMatrix_eq_relationMap",
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
  "slug": "coe-ofmatrix-eq-relationmap--cd546e2dbb74c7620e9e03e5",
  "source": {
    "blob": "83e36cc75fd5495178c77fe2a591b5a4619a351f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 230,
    "path": "GRWTSK/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd546e2dbb74c7620e9e03e5ba3dad21bee165d07ecc5c09ef8ecb3c0d225d96",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d315bf8-090a-f927-63b9-cceb9cc78e0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_ofMatrix_eq_relationMap [DecidableEq n] {c : RingCon (Matrix n n R)} (i j : n) :
    ⇑(ofMatrix c) = Relation.Map c (· i j) (· i j) := by
  ext x y
  constructor
  · intro h
    refine ⟨_,_, h i j, ?_⟩
    simp
  · rintro ⟨X, Y, h, rfl, rfl⟩ i' j'
    simpa using c.mul (c.mul (c.refl <| single i' i 1) h) (c.refl <| single j j' 1)

end NonAssocSemiring

end RingCon

namespace TwoSidedIdeal
open Matrix

variable {R : Type*} (n : Type*)

section NonUnitalNonAssocRing
variable [NonUnitalNonAssocRing R] [Fintype n]

/-- The two-sided ideal of matrices with entries in `I ≤ R`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant868160a4577da9defee56984fab939efb503946c3b53eab161da7458ee7bbe16.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e36cc75fd5495178c77fe2a591b5a4619a351f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
