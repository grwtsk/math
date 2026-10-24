# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e74fef23c41e7821a9b60462a6b732671db32a07cddc6fe2486db6e058223f26",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--90fd7fc1e43f1694cd33280d",
  "source": {
    "blob": "b95883c8fde2d934cbcc20196417a511d1ed7c06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 73,
    "path": "GRWTSK/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90fd7fc1e43f1694cd33280df48b01c61ca3ca8667993c8acb0777d02bdfe8df",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e74fef23c41e7821a9b60462a6b732671db32a07cddc6fe2486db6e058223f26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CommSemiring (SymmetricAlgebra R M) where
  mul_comm a b := by
    show Commute a b
    induction b using SymmetricAlgebra.induction with
    | algebraMap r => exact Algebra.commute_algebraMap_right _ _
    | ι x => induction a using SymmetricAlgebra.induction with
      | algebraMap r => exact Algebra.commute_algebraMap_left _ _
      | ι y => simp [commute_iff_eq, ι, ← map_mul, RingQuot.mkAlgHom_rel _ (SymRel.mul_comm x y)]
      | mul a b ha hb => exact ha.mul_left hb
      | add a b ha hb => exact ha.add_left hb
    | mul b c hb hc => exact hb.mul_right hc
    | add b c hb hc => exact hb.add_right hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantfa2f4e24dbac1c5de09ca2406026859fa815c0b1eadad85cb4305f205e756ab6.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b95883c8fde2d934cbcc20196417a511d1ed7c06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
