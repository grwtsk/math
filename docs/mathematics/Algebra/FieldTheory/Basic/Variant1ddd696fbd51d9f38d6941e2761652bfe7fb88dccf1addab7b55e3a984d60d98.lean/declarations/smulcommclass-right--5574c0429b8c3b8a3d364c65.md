# smulCommClass_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7dc04c0118c91e3308487a7ce6565ebb9f1aa9abecaef383f7e5fde8826db74a",
  "kind": "instance",
  "lexical_name": "smulCommClass_right",
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
  "slug": "smulcommclass-right--5574c0429b8c3b8a3d364c65",
  "source": {
    "blob": "3cf67648da33c3294bd7dc3f84a9e9e4faf7656d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 354,
    "path": "GRWTSK/Algebra/FieldTheory/Basic/Variant1ddd696fbd51d9f38d6941e2761652bfe7fb88dccf1addab7b55e3a984d60d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5574c0429b8c3b8a3d364c65da0f20b41c84fffa91b25fb72a0cc60ccdf13853",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Basic/Variant1ddd696fbd51d9f38d6941e2761652bfe7fb88dccf1addab7b55e3a984d60d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7dc04c0118c91e3308487a7ce6565ebb9f1aa9abecaef383f7e5fde8826db74a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smulCommClass_right [SMul X Y] [SMul L Y] [SMulCommClass X L Y]
    (F : IntermediateField K L) : SMulCommClass X F Y :=
  inferInstanceAs (SMulCommClass X F.toSubfield Y)

-- note: giving this instance the default priority may trigger trouble with synthesizing instances
-- for field extensions with more than one intermediate field. For example, in a field extension
-- `E/F`, and with `K₁ ≤ K₂` of type `IntermediateField F E`, this instance will cause a search
-- for `IsScalarTower K₁ K₂ E` to trigger a search for `IsScalarTower E K₂ E` which may
-- take a long time to fail.
/-- Note that this provides `IsScalarTower F K K` which is needed by `smul_mul_assoc`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/Basic/Variant1ddd696fbd51d9f38d6941e2761652bfe7fb88dccf1addab7b55e3a984d60d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/Basic/Variant1ddd696fbd51d9f38d6941e2761652bfe7fb88dccf1addab7b55e3a984d60d98.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cf67648da33c3294bd7dc3f84a9e9e4faf7656d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
