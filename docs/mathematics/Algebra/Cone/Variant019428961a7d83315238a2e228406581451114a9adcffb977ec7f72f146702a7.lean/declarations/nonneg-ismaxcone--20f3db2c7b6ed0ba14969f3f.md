# nonneg.isMaxCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00a94221abe0426e822b59a8e345b781805c7bc4277ccc767858998dfae06520",
  "kind": "instance",
  "lexical_name": "nonneg.isMaxCone",
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
  "slug": "nonneg-ismaxcone--20f3db2c7b6ed0ba14969f3f",
  "source": {
    "blob": "72ac2d34038dbab95ab4e95b8666bad4264b6f1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 68,
    "path": "GRWTSK/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20f3db2c7b6ed0ba14969f3faa17eed2a41af1d5f4f39164e17bfae0772f7be7",
  "verification": {
    "reference": "docs/verification/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00a94221abe0426e822b59a8e345b781805c7bc4277ccc767858998dfae06520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonneg.isMaxCone {T : Type*} [Ring T] [LinearOrder T] [IsStrictOrderedRing T] :
    IsMaxCone (nonneg T) where
  mem_or_neg_mem := mem_or_neg_mem (C := AddGroupCone.nonneg T)

end RingCone

variable {S R : Type*} [Ring R] [SetLike S R] (C : S)

/-- Construct a partially ordered ring by designating a cone in a ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Cone/Variant019428961a7d83315238a2e228406581451114a9adcffb977ec7f72f146702a7.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72ac2d34038dbab95ab4e95b8666bad4264b6f1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
