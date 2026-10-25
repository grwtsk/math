# Subsemigroup.toAddSubsemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:460670f98b88ab2b17b0a6c033c8745e09b78e4903c4b2db6e131bcd902183f8",
  "kind": "def",
  "lexical_name": "Subsemigroup.toAddSubsemigroup",
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
  "slug": "subsemigroup-toaddsubsemigroup--0bb7ba2987dd25c7005f221a",
  "source": {
    "blob": "c182f506b9385b435054e76c3a30054f545e19df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant5c063bb116ff90d12ebed3fa88ecc2e0918b8dcc843c9ba72a33e3e55832c74e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bb7ba2987dd25c7005f221a258e5d31078d2418fe8d1b49ffccf42f71130ee5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant5c063bb116ff90d12ebed3fa88ecc2e0918b8dcc843c9ba72a33e3e55832c74e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:460670f98b88ab2b17b0a6c033c8745e09b78e4903c4b2db6e131bcd902183f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subsemigroup.toAddSubsemigroup : Subsemigroup M ≃o AddSubsemigroup (Additive M) where
  toFun S :=
    { carrier := Additive.toMul ⁻¹' S
      add_mem' := S.mul_mem' }
  invFun S :=
    { carrier := Additive.ofMul ⁻¹' S
      mul_mem' := S.add_mem' }
  map_rel_iff' := Iff.rfl

/-- Additive subsemigroups of an additive semigroup `Additive M` are isomorphic to subsemigroups
of `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant5c063bb116ff90d12ebed3fa88ecc2e0918b8dcc843c9ba72a33e3e55832c74e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variant5c063bb116ff90d12ebed3fa88ecc2e0918b8dcc843c9ba72a33e3e55832c74e.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c182f506b9385b435054e76c3a30054f545e19df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
