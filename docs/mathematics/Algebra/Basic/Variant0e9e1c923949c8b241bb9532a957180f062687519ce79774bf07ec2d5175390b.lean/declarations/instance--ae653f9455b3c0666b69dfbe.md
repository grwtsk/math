# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d947fe8fcef8e4a7bc8812ddf550c1d99f9ef2a2f1ad15775614b5872af5ac8f",
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
  "slug": "instance--ae653f9455b3c0666b69dfbe",
  "source": {
    "blob": "9558ca5f940620f7443f5b2315c062bbe4dd20fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 80,
    "path": "GRWTSK/Algebra/Basic/Variant0e9e1c923949c8b241bb9532a957180f062687519ce79774bf07ec2d5175390b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae653f9455b3c0666b69dfbeffa08f50fb423a84e93d6271a6b2d7ea88a5f1c3",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant0e9e1c923949c8b241bb9532a957180f062687519ce79774bf07ec2d5175390b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d947fe8fcef8e4a7bc8812ddf550c1d99f9ef2a2f1ad15775614b5872af5ac8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsCentral K Dᵐᵒᵖ where
  out z hz :=
    have ⟨k, hk⟩ := h.1 (MulOpposite.unop_mem_center_iff.mpr hz)
    ⟨k, by simpa using congr(op $hk)⟩

end Algebra.IsCentral
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant0e9e1c923949c8b241bb9532a957180f062687519ce79774bf07ec2d5175390b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant0e9e1c923949c8b241bb9532a957180f062687519ce79774bf07ec2d5175390b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9558ca5f940620f7443f5b2315c062bbe4dd20fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
