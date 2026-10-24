# symm_toCoalgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa081d7b-bb06-ed4b-8976-39bb505f9816",
  "kind": "theorem",
  "lexical_name": "symm_toCoalgHom",
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
  "slug": "symm-tocoalghom--f4e46e1c708fb4077e738394",
  "source": {
    "blob": "725f943ab44482a0dd614f99727008ad84564b8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 218,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4e46e1c708fb4077e7383944519604a84310b179cc9ac7d8d709401e0e8ec30",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa081d7b-bb06-ed4b-8976-39bb505f9816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_toCoalgHom (e : A ≃ₗc[R] B) :
    ((e.symm : B →ₗc[R] A) : B →ₗ[R] A) = (e : A ≃ₗ[R] B).symm := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variant88f906e5a5b4e06b928b0f2ebed77d990610ae2760f4504aa47720726f0d20fb.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `725f943ab44482a0dd614f99727008ad84564b8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
