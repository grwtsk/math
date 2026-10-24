# CharacterEigenlineRealization.toLinearEmbeddingLineRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec532a40f6ce43b07176d0985e35941405b780d046513f21a924886ed4297acf",
  "kind": "def",
  "lexical_name": "CharacterEigenlineRealization.toLinearEmbeddingLineRealization",
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
  "slug": "charactereigenlinerealization-tolinearembeddinglinerealization--c6a6a958722bdaccd45011c0",
  "source": {
    "blob": "6498cd959aba4513fab921e1e8fe664ddcf33ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 101,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6a6a958722bdaccd45011c0f2073663600315932a9f19c5df2b677f80ad3b81",
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

Occurrence: `declaration:ec532a40f6ce43b07176d0985e35941405b780d046513f21a924886ed4297acf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CharacterEigenlineRealization.toLinearEmbeddingLineRealization
    {A C V G : Type*}
    [CommRing A] [Field C] [AddCommGroup V] [Module C V]
    [FiniteDimensional C V]
    {conj : G → G} {v : OddSignRow G conj}
    (R : CharacterEigenlineRealization A C V G conj v) :
    LinearEmbeddingLineRealization C V G conj v where
  line := fun g => characterEigenspace R.action (R.character g)
  line_finrank_one := R.line_finrank_one
  line_nonzero := R.line_nonzero
  typeAt := R.typeAt
  typeAt_eq := R.typeAt_eq

/-- Four genuine character-eigenline realizations with balanced sign rows have
the same all-coordinate (2,2) bidegree conclusion.

The four ambient representations may be different; only the coefficient field
and indexing set are shared. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMEmbeddingEigenspaces.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6498cd959aba4513fab921e1e8fe664ddcf33ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
