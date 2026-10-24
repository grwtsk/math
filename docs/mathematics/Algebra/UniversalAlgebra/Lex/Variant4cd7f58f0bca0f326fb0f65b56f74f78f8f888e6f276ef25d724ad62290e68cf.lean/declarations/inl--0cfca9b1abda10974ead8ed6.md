# inl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cd0a16a19738265af0e13913954867f3cd2073cacb83974eac2242850d51574",
  "kind": "def",
  "lexical_name": "inl",
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
  "slug": "inl--0cfca9b1abda10974ead8ed6",
  "source": {
    "blob": "5c4d36ff1eb43b85cb94574a2cb36757533838e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 87,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0cfca9b1abda10974ead8ed6c34071ea0765a7c54ab1847eb2406dcf78e9ba77",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cd0a16a19738265af0e13913954867f3cd2073cacb83974eac2242850d51574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def inl : α →*₀o WithZero (αˣ ×ₗ βˣ) where
  __ := (WithZero.map' (toLexMulEquiv ..).toMonoidHom).comp (inl α β)
  monotone' := by simpa using (WithZero.map'_mono (Prod.Lex.toLex_mono)).comp inl_mono

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- Given linearly ordered groups with zero M, N, the natural inclusion ordered homomorphism from
N to `WithZero (Mˣ ×ₗ Nˣ)`, which is the linearly ordered group with zero that can be identified
as their product. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Lex/Variant4cd7f58f0bca0f326fb0f65b56f74f78f8f888e6f276ef25d724ad62290e68cf.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c4d36ff1eb43b85cb94574a2cb36757533838e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
