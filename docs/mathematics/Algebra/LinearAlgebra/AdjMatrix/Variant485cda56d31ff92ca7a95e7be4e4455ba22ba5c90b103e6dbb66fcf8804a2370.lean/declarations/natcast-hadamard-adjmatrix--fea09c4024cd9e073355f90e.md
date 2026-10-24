# natCast_hadamard_adjMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9067deb-36e0-6c8b-5174-f05624b39b35",
  "kind": "theorem",
  "lexical_name": "natCast_hadamard_adjMatrix",
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
  "slug": "natcast-hadamard-adjmatrix--fea09c4024cd9e073355f90e",
  "source": {
    "blob": "9a77cb9e3205252661c7c06b960d53dfa20e41a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 451,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fea09c4024cd9e073355f90eb9333c15fa35b10957326c56513a020eb5d583e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9067deb-36e0-6c8b-5174-f05624b39b35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 451–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem natCast_hadamard_adjMatrix [NatCast α] (a : ℕ) :
    a.cast ⊙ G.adjMatrix α = 0 := diagonal_hadamard_adjMatrix _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant485cda56d31ff92ca7a95e7be4e4455ba22ba5c90b103e6dbb66fcf8804a2370.lean#L451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a77cb9e3205252661c7c06b960d53dfa20e41a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
