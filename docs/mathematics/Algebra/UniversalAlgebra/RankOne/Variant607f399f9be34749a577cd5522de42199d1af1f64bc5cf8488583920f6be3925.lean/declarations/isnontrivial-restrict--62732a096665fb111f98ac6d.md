# isNontrivial_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:244ed8328f64d827435f6ace5910b03e944d66e4d4a8ac03bcef2d557521780b",
  "kind": "instance",
  "lexical_name": "isNontrivial_restrict",
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
  "slug": "isnontrivial-restrict--62732a096665fb111f98ac6d",
  "source": {
    "blob": "6ce4fe69acd1f54adfc52a483c6b3e7c82c55282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 139,
    "path": "GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62732a096665fb111f98ac6dbbd9e52e0ff17e3f318025b22f30a54cc72d8815",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:244ed8328f64d827435f6ace5910b03e944d66e4d4a8ac03bcef2d557521780b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isNontrivial_restrict : (v.restrict).IsNontrivial where
  exists_val_nontrivial := by
    obtain ⟨x, ⟨hx0, hx1⟩⟩ := IsNontrivial.exists_val_nontrivial (v := v)
    exact ⟨x, by simp [hx0], by simpa⟩

variable (K : Type*) [DivisionRing K] (v : Valuation K Γ₀) [RankOne v]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/RankOne/Variant607f399f9be34749a577cd5522de42199d1af1f64bc5cf8488583920f6be3925.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ce4fe69acd1f54adfc52a483c6b3e7c82c55282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
