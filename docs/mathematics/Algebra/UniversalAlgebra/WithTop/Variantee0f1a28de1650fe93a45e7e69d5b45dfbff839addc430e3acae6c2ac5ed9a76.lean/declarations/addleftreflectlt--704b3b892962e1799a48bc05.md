# addLeftReflectLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27e73866114567a917a8e845efa0a5b6c1e01d33bc7a0f64fd2377d8b9ef81bd",
  "kind": "instance",
  "lexical_name": "addLeftReflectLT",
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
  "slug": "addleftreflectlt--704b3b892962e1799a48bc05",
  "source": {
    "blob": "608f702f9cf829b67b85314a7047f8239f0b96a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 500,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantee0f1a28de1650fe93a45e7e69d5b45dfbff839addc430e3acae6c2ac5ed9a76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:704b3b892962e1799a48bc05a36494820488ac39f7c04bc1e8b4805bea1096de",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variantee0f1a28de1650fe93a45e7e69d5b45dfbff839addc430e3acae6c2ac5ed9a76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27e73866114567a917a8e845efa0a5b6c1e01d33bc7a0f64fd2377d8b9ef81bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addLeftReflectLT [LT α] [AddLeftReflectLT α] : AddLeftReflectLT (WithBot α) where
  elim x y z := by
    cases x <;> cases y <;> cases z <;> simp [← coe_add, swap]; simpa using lt_of_add_lt_add_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variantee0f1a28de1650fe93a45e7e69d5b45dfbff839addc430e3acae6c2ac5ed9a76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variantee0f1a28de1650fe93a45e7e69d5b45dfbff839addc430e3acae6c2ac5ed9a76.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `608f702f9cf829b67b85314a7047f8239f0b96a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
