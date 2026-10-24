# algebraMap_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6cb067d-8ecb-74f0-ebc8-24ec7e88e666",
  "kind": "lemma",
  "lexical_name": "algebraMap_eq_one_iff",
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
  "slug": "algebramap-eq-one-iff--f9ed953add20f14e4018a366",
  "source": {
    "blob": "c99fbf6d09c94f85f896912c5e32a225e8dbc640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 352,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ed953add20f14e4018a3668b14ec92e76ec6c03dd7d1fe078310fee434445e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6cb067d-8ecb-74f0-ebc8-24ec7e88e666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma algebraMap_eq_one_iff {r : R} : algebraMap R A r = 1 ↔ r = 1 :=
  map_eq_one_iff _ <| FaithfulSMul.algebraMap_injective R A

end FaithfulSMul

/-- If `R` embeds faithfully into `A` and `G` satisfies `SMulDistribClass G R A`, then
the `SMul` of `G` on `R` extends to a `MulSemiringAction`. -/
@[implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant47a3ed1f5f74e9eec976f883c79f420332a47ab067dea360ae2a1e64279e3feb.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c99fbf6d09c94f85f896912c5e32a225e8dbc640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
