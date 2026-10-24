# isPretransitive_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0551f78f6967b3838cee869822823ad71ff42819224ad3eb55e0ce8a0d5c5b7",
  "kind": "instance",
  "lexical_name": "isPretransitive_quotient",
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
  "slug": "ispretransitive-quotient--f1cfcd8f356e78c2b3ad05ca",
  "source": {
    "blob": "6392262fb9f727f48726cba67bde4e46dcbc3248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 294,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1cfcd8f356e78c2b3ad05ca03f8e71b2aadfc141ba74df4f5765504717bc738",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0551f78f6967b3838cee869822823ad71ff42819224ad3eb55e0ce8a0d5c5b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isPretransitive_quotient (G) [Group G] (H : Subgroup G) : IsPretransitive G (G ⧸ H) where
  exists_smul_eq := by
    { rintro ⟨x⟩ ⟨y⟩
      refine ⟨y * x⁻¹, QuotientGroup.eq.mpr ?_⟩
      simp only [smul_eq_mul, H.one_mem, inv_mul_cancel, inv_mul_cancel_right]}

variable {α}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant940858214871a6a016133296265c120d2a732378e1972d7c0e2ed529f67ad9df.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6392262fb9f727f48726cba67bde4e46dcbc3248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
