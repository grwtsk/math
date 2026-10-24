# coprime_of_squarefree_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91394b2c-a371-241a-07e7-df1dce7721ea",
  "kind": "theorem",
  "lexical_name": "coprime_of_squarefree_mul",
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
  "slug": "coprime-of-squarefree-mul--4f95b79dde9b094d54e02eea",
  "source": {
    "blob": "82768a42121429627bca02a10ce73934f81d1e6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 357,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f95b79dde9b094d54e02eeaa35b08a74c863dc18f7bd214aef3515929f6f798",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91394b2c-a371-241a-07e7-df1dce7721ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprime_of_squarefree_mul {m n : ℕ} (h : Squarefree (m * n)) : m.Coprime n :=
  coprime_of_dvd fun p hp hm hn => squarefree_iff_prime_squarefree.mp h p hp (mul_dvd_mul hm hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variantb4a95162ebb0d3c4b1f505c390bf3f3b29af387fb4a7318c381c1120ce356e97.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82768a42121429627bca02a10ce73934f81d1e6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
