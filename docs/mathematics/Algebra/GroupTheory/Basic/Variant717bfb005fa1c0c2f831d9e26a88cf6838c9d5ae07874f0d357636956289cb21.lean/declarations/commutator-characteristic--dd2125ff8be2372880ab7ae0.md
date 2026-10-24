# commutator_characteristic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eac9bc5a9899dc1e5d27c34ad1ff8e17c0f170a5576fd49db9670d3bfdfbf70b",
  "kind": "instance",
  "lexical_name": "commutator_characteristic",
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
  "slug": "commutator-characteristic--dd2125ff8be2372880ab7ae0",
  "source": {
    "blob": "3b6d4d5f1cdd0d20136ff282c90ad65f43d5f78e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 171,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd2125ff8be2372880ab7ae0cdeaf43d99f569318b1bb52edc42ade16181b01f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eac9bc5a9899dc1e5d27c34ad1ff8e17c0f170a5576fd49db9670d3bfdfbf70b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commutator_characteristic [h₁ : Characteristic H₁] [h₂ : Characteristic H₂] :
    Characteristic ⁅H₁, H₂⁆ :=
  characteristic_iff_le_map.mpr fun ϕ =>
    commutator_le_map_commutator (characteristic_iff_le_map.mp h₁ ϕ)
      (characteristic_iff_le_map.mp h₂ ϕ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant717bfb005fa1c0c2f831d9e26a88cf6838c9d5ae07874f0d357636956289cb21.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b6d4d5f1cdd0d20136ff282c90ad65f43d5f78e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
