# image_symm_eq_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce400996-23a2-af40-d9d3-9ed62da8d432",
  "kind": "lemma",
  "lexical_name": "image_symm_eq_preimage",
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
  "slug": "image-symm-eq-preimage--bc29daab7ecac4b017f058d3",
  "source": {
    "blob": "44033ff7ce29ae0558975b8be8c7b4a118113fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 362,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant09fea0a541abd3f72f9bcf3ae62b797de07dc459174e9547c54a2d4784d77356.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc29daab7ecac4b017f058d38f51d2c7d1be176bf206d3142e7208ae82b264fe",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variant09fea0a541abd3f72f9bcf3ae62b797de07dc459174e9547c54a2d4784d77356.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce400996-23a2-af40-d9d3-9ed62da8d432`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_symm_eq_preimage (e : A₁ ≃ₐ[R] A₂) (s : Set A₂) : e.symm '' s = e ⁻¹' s :=
  e.toLinearEquiv.image_symm_eq_preimage _

end symm

section simps

/-- See Note [custom simps projection] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variant09fea0a541abd3f72f9bcf3ae62b797de07dc459174e9547c54a2d4784d77356.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variant09fea0a541abd3f72f9bcf3ae62b797de07dc459174e9547c54a2d4784d77356.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44033ff7ce29ae0558975b8be8c7b4a118113fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
