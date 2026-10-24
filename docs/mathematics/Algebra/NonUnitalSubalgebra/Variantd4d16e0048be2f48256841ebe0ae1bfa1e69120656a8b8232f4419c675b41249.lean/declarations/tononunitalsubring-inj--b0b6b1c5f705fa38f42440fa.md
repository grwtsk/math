# toNonUnitalSubring_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a3db2fc-537c-9b8b-b294-184b14496e2d",
  "kind": "theorem",
  "lexical_name": "toNonUnitalSubring_inj",
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
  "slug": "tononunitalsubring-inj--b0b6b1c5f705fa38f42440fa",
  "source": {
    "blob": "f68d5df669ef619d2215dcab83e04f7957aaa0e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 205,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0b6b1c5f705fa38f42440fa5c4d55b4a5dca4f36d3709270ba14d0eb9e4c5d8",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a3db2fc-537c-9b8b-b294-184b14496e2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toNonUnitalSubring_inj {R : Type u} {A : Type v} [CommRing R] [NonUnitalRing A] [Module R A]
    [Star A] {S U : NonUnitalStarSubalgebra R A} :
    S.toNonUnitalSubring = U.toNonUnitalSubring ↔ S = U :=
  toNonUnitalSubring_injective.eq_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Variantd4d16e0048be2f48256841ebe0ae1bfa1e69120656a8b8232f4419c675b41249.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f68d5df669ef619d2215dcab83e04f7957aaa0e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
