# isPrimary_of_isMaximal_radical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd2d6bf3-f16f-4a1e-f0d2-227c967d89cc",
  "kind": "theorem",
  "lexical_name": "isPrimary_of_isMaximal_radical",
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
  "slug": "isprimary-of-ismaximal-radical--b0b5b9bb4db0a08ee5576667",
  "source": {
    "blob": "804c919e41f6f36a4864dcab95dfeba61fb19258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 385,
    "path": "GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0b5b9bb4db0a08ee5576667744c6f2c15dae5437f67547c8d2de964c72a513b",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd2d6bf3-f16f-4a1e-f0d2-227c967d89cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPrimary_of_isMaximal_radical [CommRing R] {I : Ideal R} (hi : IsMaximal (radical I)) :
    I.IsPrimary :=
  have : radical I = jacobson I :=
    le_antisymm (le_sInf fun _ ⟨him, hm⟩ => hm.isPrime.radical_le_iff.2 him)
      (sInf_le ⟨le_radical, hi⟩)
  isPrimary_iff.mpr
  ⟨ne_top_of_lt <| lt_of_le_of_lt le_radical (lt_top_iff_ne_top.2 hi.1.1), fun {x y} hxy =>
    ((isLocal_of_isMaximal_radical hi).mem_jacobson_or_exists_inv y).symm.imp
      (fun ⟨z, hz⟩ => by
        rw [← mul_one x, ← sub_sub_cancel (z * y) 1, mul_sub, mul_left_comm]
        exact I.sub_mem (I.mul_mem_left _ hxy) (I.mul_mem_left _ hz))
      (this ▸ id)⟩

end Ideal

namespace TwoSidedIdeal

variable {R : Type u} [Ring R]

/-- The Jacobson radical of `I` is the infimum of all maximal (left) ideals containing `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant49b148b36d7a7004329ff9ff3ded978aaaa2537165505e01cece49d947966be2.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `804c919e41f6f36a4864dcab95dfeba61fb19258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
