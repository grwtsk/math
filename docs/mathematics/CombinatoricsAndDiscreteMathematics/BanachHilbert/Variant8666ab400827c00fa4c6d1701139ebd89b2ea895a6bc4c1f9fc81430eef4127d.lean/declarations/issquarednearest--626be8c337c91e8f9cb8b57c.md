# IsSquaredNearest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c5f28167dc2a822b32d6db2ad137329030129059904617cff5c31bdcd3cad37",
  "kind": "def",
  "lexical_name": "IsSquaredNearest",
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
  "slug": "issquarednearest--626be8c337c91e8f9cb8b57c",
  "source": {
    "blob": "5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:626be8c337c91e8f9cb8b57c8faeed6357ba415235ed834360a27f0ea9c11175",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c5f28167dc2a822b32d6db2ad137329030129059904617cff5c31bdcd3cad37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsSquaredNearest {n : Nat}
    (x : Fin n → ℝ) (b : StableBitfield n) : Prop :=
  ∀ c, squaredPointCost x b ≤ squaredPointCost x c

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
