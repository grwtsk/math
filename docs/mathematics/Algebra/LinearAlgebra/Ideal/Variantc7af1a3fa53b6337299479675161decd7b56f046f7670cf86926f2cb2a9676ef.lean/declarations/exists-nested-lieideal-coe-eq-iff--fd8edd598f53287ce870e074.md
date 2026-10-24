# exists_nested_lieIdeal_coe_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ad3931d2343e472abed14022abdd8cbff5662fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c7/c7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb89b28f-7dcf-9bcc-dfd4-190d33179b11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac36c37c-7358-f28a-d092-924d30c70cbe",
  "kind": "theorem",
  "lexical_name": "exists_nested_lieIdeal_coe_eq_iff",
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
  "slug": "exists-nested-lieideal-coe-eq-iff--fd8edd598f53287ce870e074",
  "source": {
    "blob": "3ad3931d2343e472abed14022abdd8cbff5662fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd8edd598f53287ce870e0740beaef920337a54528c9dacc8840c7057d0a4d63",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac36c37c-7358-f28a-d092-924d30c70cbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nested_lieIdeal_coe_eq_iff {K' : LieSubalgebra R L} (h : K ≤ K') :
    (∃ I : LieIdeal R K', ↑I = ofLe h) ↔ ∀ x y : L, x ∈ K' → y ∈ K → ⁅x, y⁆ ∈ K := by
  simp only [exists_lieIdeal_coe_eq_iff, coe_bracket, mem_ofLe]
  constructor
  · intro h' x y hx hy; exact h' ⟨x, hx⟩ ⟨y, h hy⟩ hy
  · rintro h' ⟨x, hx⟩ ⟨y, hy⟩ hy'; exact h' x y hx hy'

end LieSubalgebra

end LieSubmodule

section LieSubmoduleMapAndComap

variable {R : Type u} {L : Type v} {L' : Type w₂} {M : Type w} {M' : Type w₁}
variable [CommRing R] [LieRing L] [LieRing L'] [LieAlgebra R L']
variable [AddCommGroup M] [Module R M] [LieRingModule L M]
variable [AddCommGroup M'] [Module R M'] [LieRingModule L M']

namespace LieIdeal

variable [LieAlgebra R L] [LieModule R L M] [LieModule R L M']
variable (f : L →ₗ⁅R⁆ L') (I I₂ : LieIdeal R L) (J : LieIdeal R L')

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Ideal/Variantc7af1a3fa53b6337299479675161decd7b56f046f7670cf86926f2cb2a9676ef.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad3931d2343e472abed14022abdd8cbff5662fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
