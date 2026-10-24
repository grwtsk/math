# circulant_mul_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:095899de-773c-0955-1a05-b3a379bd8bd9",
  "kind": "theorem",
  "lexical_name": "circulant_mul_comm",
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
  "slug": "circulant-mul-comm--5c88700d64e5b31d8d6633a4",
  "source": {
    "blob": "f32374972d048378733b649f627a6934bedafaa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 132,
    "path": "GRWTSK/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c88700d64e5b31d8d6633a4718d41f0bb2c2ad7423e3b4d4b6d3667662a09e5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:095899de-773c-0955-1a05-b3a379bd8bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circulant_mul_comm [CommMagma α] [AddCommMonoid α] [Fintype n] [AddCommGroup n]
    (v w : n → α) : circulant v * circulant w = circulant w * circulant v := by
  ext i j
  simp only [mul_apply, circulant_apply, mul_comm]
  refine Fintype.sum_equiv ((Equiv.subLeft i).trans (Equiv.addRight j)) _ _ ?_
  intro x
  simp only [Equiv.trans_apply, Equiv.subLeft_apply, Equiv.coe_addRight, add_sub_cancel_right,
    mul_comm]
  congr 2
  abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Circulant/Variant04d4aec6150113f4d378c1b677fd4e8ce89158690d0c05438bee24e67a29844a.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f32374972d048378733b649f627a6934bedafaa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
