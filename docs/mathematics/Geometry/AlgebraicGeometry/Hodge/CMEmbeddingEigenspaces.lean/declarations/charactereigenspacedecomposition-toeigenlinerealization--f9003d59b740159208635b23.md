# CharacterEigenspaceDecomposition.toEigenlineRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1bb27739a11df204347d093114578f7581d2c7e2cbd510b7a585b7de72aefe9",
  "kind": "def",
  "lexical_name": "CharacterEigenspaceDecomposition.toEigenlineRealization",
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
  "slug": "charactereigenspacedecomposition-toeigenlinerealization--f9003d59b740159208635b23",
  "source": {
    "blob": "6498cd959aba4513fab921e1e8fe664ddcf33ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9003d59b740159208635b237a06d8194f91505403ed4741ba53c97bac481631",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1bb27739a11df204347d093114578f7581d2c7e2cbd510b7a585b7de72aefe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CharacterEigenspaceDecomposition.toEigenlineRealization
    {A C V G : Type*}
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    [FiniteDimensional C V]
    {conj : G → G} {v : OddSignRow G conj}
    (R : CharacterEigenspaceDecomposition A C V G conj v) :
    CharacterEigenlineRealization A C V G conj v :=
  R.toCharacterEigenlineRealization

/-- Forget the algebra action but retain the genuine one-dimensional linear
eigenspaces and their type labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6498cd959aba4513fab921e1e8fe664ddcf33ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
