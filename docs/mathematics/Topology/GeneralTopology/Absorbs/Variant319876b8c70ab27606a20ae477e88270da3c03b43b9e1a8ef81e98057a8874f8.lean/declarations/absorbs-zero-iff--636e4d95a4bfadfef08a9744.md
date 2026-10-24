# absorbs_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8d42815-6cf6-5ca7-560f-81b86abb3c86",
  "kind": "lemma",
  "lexical_name": "absorbs_zero_iff",
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
  "slug": "absorbs-zero-iff--636e4d95a4bfadfef08a9744",
  "source": {
    "blob": "846d12a11e0035b7e50c2b1bfec0869e8e0bd7c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:636e4d95a4bfadfef08a97444f9be2bee485a85737339acce456f3290f7d1913",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8d42815-6cf6-5ca7-560f-81b86abb3c86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma absorbs_zero_iff [NeBot (cobounded G₀)]
    {E : Type*} [AddMonoid E] [DistribMulAction G₀ E] {s : Set E} :
    Absorbs G₀ s 0 ↔ 0 ∈ s := by
  simp only [absorbs_iff_eventually_cobounded_mapsTo, ← singleton_zero,
    mapsTo_singleton, smul_zero, eventually_const]

end GroupWithZero

section AddGroup

variable {M E : Type*} [Monoid M] [AddGroup E] [DistribMulAction M E] [Bornology M]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846d12a11e0035b7e50c2b1bfec0869e8e0bd7c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
