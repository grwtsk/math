# absoluteGaloisGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:897be9f0cd63cbeff4e50f13a5545e7ea2297fe56e086e5c74cfb7f018395b30",
  "kind": "def",
  "lexical_name": "absoluteGaloisGroup",
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
  "slug": "absolutegaloisgroup--ccd64ba4765e25eb5e3720b9",
  "source": {
    "blob": "1b79a6c8e0b7e0310f44fd71893aa7e4d4ec980a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 47,
    "path": "GRWTSK/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccd64ba4765e25eb5e3720b9734e0af38398aedab279c3ce9418162eb70603a3",
  "verification": {
    "reference": "docs/verification/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:897be9f0cd63cbeff4e50f13a5545e7ea2297fe56e086e5c74cfb7f018395b30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def absoluteGaloisGroup := AlgebraicClosure K ≃ₐ[K] AlgebraicClosure K

local notation "G_K" => absoluteGaloisGroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AbsoluteGaloisGroup/Variant5dc19930fa42b340d189a737fb58e17a354c3cfde0c81969fb9c75ecc3dd333d.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b79a6c8e0b7e0310f44fd71893aa7e4d4ec980a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
