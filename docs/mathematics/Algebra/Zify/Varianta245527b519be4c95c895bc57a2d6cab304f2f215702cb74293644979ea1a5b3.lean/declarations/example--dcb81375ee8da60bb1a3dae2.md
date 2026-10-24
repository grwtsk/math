# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44ca85cd9489206927e9d7ab739e334c6250eb400572a21a7d5de87d515839d5",
  "kind": "example",
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
  "slug": "example--dcb81375ee8da60bb1a3dae2",
  "source": {
    "blob": "72c24633eea749d2aee4b03942d38a3d4814c097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 54,
    "path": "GRWTSK/Algebra/Zify/Varianta245527b519be4c95c895bc57a2d6cab304f2f215702cb74293644979ea1a5b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcb81375ee8da60bb1a3dae253be73a1a670bbcddf71e1ca1c9a9fc95003e939",
  "verification": {
    "reference": "docs/verification/Algebra/Zify/Varianta245527b519be4c95c895bc57a2d6cab304f2f215702cb74293644979ea1a5b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44ca85cd9489206927e9d7ab739e334c6250eb400572a21a7d5de87d515839d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a b c : ℕ) (h : a + b ≠ c) : True := by
  zify at h
  guard_hyp h : (a + b : ℤ) ≠ c
  trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Zify/Varianta245527b519be4c95c895bc57a2d6cab304f2f215702cb74293644979ea1a5b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Zify/Varianta245527b519be4c95c895bc57a2d6cab304f2f215702cb74293644979ea1a5b3.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72c24633eea749d2aee4b03942d38a3d4814c097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
