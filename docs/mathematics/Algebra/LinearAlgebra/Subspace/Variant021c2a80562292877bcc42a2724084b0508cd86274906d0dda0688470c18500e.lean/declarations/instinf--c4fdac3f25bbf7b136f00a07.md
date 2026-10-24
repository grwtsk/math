# instInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c129b0350375e414c2b85edaadec026e819e2ba36d63faf148e13a2bcd23ca8",
  "kind": "instance",
  "lexical_name": "instInf",
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
  "slug": "instinf--c4fdac3f25bbf7b136f00a07",
  "source": {
    "blob": "3bc39353547ba408dae113574771ffa10674b17a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4fdac3f25bbf7b136f00a072a636a9f31693806cb36facbd5f6e4c7373ef3a4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c129b0350375e414c2b85edaadec026e819e2ba36d63faf148e13a2bcd23ca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instInf : Min (Subspace K V) :=
  ⟨fun A B =>
    ⟨A ⊓ B, fun _v _w hv hw _hvw h1 h2 =>
      ⟨A.mem_add _ _ hv hw _ h1.1 h2.1, B.mem_add _ _ hv hw _ h1.2 h2.2⟩⟩⟩

/-- Infimums of arbitrary collections of subspaces exist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Subspace/Variant021c2a80562292877bcc42a2724084b0508cd86274906d0dda0688470c18500e.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bc39353547ba408dae113574771ffa10674b17a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
