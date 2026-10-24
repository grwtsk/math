# hasEigenvalue_toLin'_diagonal_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54165ce2-22ab-87c4-135d-fd361c9976f8",
  "kind": "lemma",
  "lexical_name": "hasEigenvalue_toLin'_diagonal_iff",
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
  "slug": "haseigenvalue-tolin-diagonal-iff--3c0ab1d60eec5d708454dbe9",
  "source": {
    "blob": "4a36667eae6f527712d75efb01a694c570ee7f03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c0ab1d60eec5d708454dbe95215892e39ca7e1ed71830bf9f269e62679f235c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54165ce2-22ab-87c4-135d-fd361c9976f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasEigenvalue_toLin'_diagonal_iff [IsDomain R] (d : n → R) {μ : R} :
    HasEigenvalue (toLin' (diagonal d)) μ ↔ (∃ i, d i = μ) :=
  hasEigenvalue_toLin_diagonal_iff _ <| Pi.basisFun R n

end NontrivialCommRing

namespace Matrix

variable [CommRing R] [AddCommGroup M] [Module R M] (d : n → R) {μ : R} (b : Basis n R M)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MatrixTheory/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Matrix/Variant47097076f5071e102ecce368d84689d7de5afa1ef8362528a1fefe56046dfeb0.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a36667eae6f527712d75efb01a694c570ee7f03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
