# _root_.Ideal.stableFiltration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:817c3b95ba12ab7537bb43552cdfc57eec99b18c70b68acd055e578e989b5dfc",
  "kind": "def",
  "lexical_name": "_root_.Ideal.stableFiltration",
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
  "slug": "root-ideal-stablefiltration--f291fae969193639c11836bf",
  "source": {
    "blob": "cd00b9939ea9017af86e913b656b695ded979226",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 170,
    "path": "GRWTSK/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f291fae969193639c11836bfc4659a395db7fd93dfaafe3a6f7de156afdc6da7",
  "verification": {
    "reference": "docs/verification/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:817c3b95ba12ab7537bb43552cdfc57eec99b18c70b68acd055e578e989b5dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Ideal.stableFiltration (I : Ideal R) (N : Submodule R M) : I.Filtration M where
  N i := I ^ i • N
  mono i := by rw [add_comm, pow_add, mul_smul]; exact Submodule.smul_le_right
  smul_le i := by rw [add_comm, pow_add, mul_smul, pow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Filtration/Variant2861450772d6e34f7d968941a857bf503a1f6cf4555cafaf8a7b7fa9fc1d7bdd.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd00b9939ea9017af86e913b656b695ded979226` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
