# binaryCofan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f7e05db8eb06c91ad341550d853be1f63dfa414afd0307faa1c663d9f9d5673",
  "kind": "def",
  "lexical_name": "binaryCofan",
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
  "slug": "binarycofan--3bb2e673aa1f191058b1cc1d",
  "source": {
    "blob": "2c8fd19fcb494657df3bf013f7250e665d1d80d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 33,
    "path": "GRWTSK/Algebra/Monoidal/Variantca7162c25209e5d2041f07b08e3524bc9892f5753e17dccfe0dd1058638b4215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bb2e673aa1f191058b1cc1d1fff7717627bf32da12a855e32dd29e9626ba68b",
  "verification": {
    "reference": "docs/verification/Algebra/Monoidal/Variantca7162c25209e5d2041f07b08e3524bc9892f5753e17dccfe0dd1058638b4215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f7e05db8eb06c91ad341550d853be1f63dfa414afd0307faa1c663d9f9d5673`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryCofan : BinaryCofan A B := .mk (ofHom includeLeft) (ofHom <| includeRight (A := A))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Monoidal/Variantca7162c25209e5d2041f07b08e3524bc9892f5753e17dccfe0dd1058638b4215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Monoidal/Variantca7162c25209e5d2041f07b08e3524bc9892f5753e17dccfe0dd1058638b4215.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c8fd19fcb494657df3bf013f7250e665d1d80d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
