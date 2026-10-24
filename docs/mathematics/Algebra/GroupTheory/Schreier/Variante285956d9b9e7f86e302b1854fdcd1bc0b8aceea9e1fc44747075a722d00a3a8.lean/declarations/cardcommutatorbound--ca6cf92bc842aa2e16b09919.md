# cardCommutatorBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a28a2cf293d0d204e4433b7a257022d68b6abcd4b95b8253079b89f03159b7b7",
  "kind": "def",
  "lexical_name": "cardCommutatorBound",
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
  "slug": "cardcommutatorbound--ca6cf92bc842aa2e16b09919",
  "source": {
    "blob": "1308181e90c800ea58daf0dfe1051774a210b8f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 201,
    "path": "GRWTSK/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca6cf92bc842aa2e16b09919ad86e85c66ccc6db21e3a4f1ba1c6b364161a848",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a28a2cf293d0d204e4433b7a257022d68b6abcd4b95b8253079b89f03159b7b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cardCommutatorBound (n : ℕ) :=
  (n ^ (2 * n)) ^ (n ^ (2 * n + 1) + 1)

/-- A theorem of Schur: The size of the commutator subgroup is bounded in terms of the number of
  commutators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Schreier/Variante285956d9b9e7f86e302b1854fdcd1bc0b8aceea9e1fc44747075a722d00a3a8.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1308181e90c800ea58daf0dfe1051774a210b8f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
