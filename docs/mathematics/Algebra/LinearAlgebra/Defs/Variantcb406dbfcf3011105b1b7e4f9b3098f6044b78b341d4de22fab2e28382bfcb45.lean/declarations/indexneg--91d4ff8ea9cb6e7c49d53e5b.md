# indexNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:712d51c9237b146433aeab3d9237afe635ae16aee522ed885757b90891df5270",
  "kind": "def",
  "lexical_name": "indexNeg",
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
  "slug": "indexneg--91d4ff8ea9cb6e7c49d53e5b",
  "source": {
    "blob": "6127116e95964fe6dd67c571b7f8c4b677e62c86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 415,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91d4ff8ea9cb6e7c49d53e5bb67c7d18f43fbdcb9869db08f927f145e96a7e06",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:712d51c9237b146433aeab3d9237afe635ae16aee522ed885757b90891df5270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 415–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def indexNeg : InvolutiveNeg ι where
  neg i := P.reflection_perm i i
  neg_neg i := by
    apply P.root.injective
    simp only [root_reflection_perm, reflection_apply, PerfectPairing.flip_apply_apply,
      root_coroot_eq_pairing, pairing_same, map_sub, map_smul, coroot_reflection_perm,
      coreflection_apply_self, LinearMap.sub_apply, map_neg, LinearMap.smul_apply, smul_eq_mul,
      mul_neg, sub_neg_eq_add]
    module

variable {i j} in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb406dbfcf3011105b1b7e4f9b3098f6044b78b341d4de22fab2e28382bfcb45.lean#L415).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6127116e95964fe6dd67c571b7f8c4b677e62c86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
