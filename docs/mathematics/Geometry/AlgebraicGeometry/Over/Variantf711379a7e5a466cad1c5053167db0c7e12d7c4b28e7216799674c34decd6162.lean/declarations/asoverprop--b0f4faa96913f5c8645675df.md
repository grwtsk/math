# asOverProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:621e1fbc67c7f102e2bd211b45435787e0b334546dbdc191b5d277521168c232",
  "kind": "abbrev",
  "lexical_name": "asOverProp",
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
  "slug": "asoverprop--b0f4faa96913f5c8645675df",
  "source": {
    "blob": "3b11edfca2b68e21e77ce0d40e86f7878b59b149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 32,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0f4faa96913f5c8645675df6621d0d710d78b545d604e9c75137e725d84c01f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:621e1fbc67c7f102e2bd211b45435787e0b334546dbdc191b5d277521168c232`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev asOverProp (X : Scheme.{u}) (S : Scheme.{u}) [X.Over S] (h : P (X ↘ S)) : P.Over ⊤ S :=
  ⟨X.asOver S, h⟩

/-- Bundle an `S`-morphism of `S`-scheme with `P` into a morphism in `P.Over ⊤ S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Over/Variantf711379a7e5a466cad1c5053167db0c7e12d7c4b28e7216799674c34decd6162.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b11edfca2b68e21e77ce0d40e86f7878b59b149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
