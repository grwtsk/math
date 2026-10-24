# erdos208.s

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c1775d2f79cbe672284188a68066e481c42b71fbd7a981f4e0b27ca3aebaec4a",
  "kind": "def",
  "lexical_name": "erdos208.s",
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
  "slug": "erdos208-s--9a95cb24cfb8e1d9d4f29c70",
  "source": {
    "blob": "2eeb190c67aa3a2f4ac69be4da77ac0c012932d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 32,
    "path": "GRWTSK/Topology/GeneralTopology/208/Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a95cb24cfb8e1d9d4f29c70cf00832e7b12d35df0b8cd1157fff733c61c07d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/208/Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c1775d2f79cbe672284188a68066e481c42b71fbd7a981f4e0b27ca3aebaec4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def erdos208.s : ℕ → ℕ := Nat.nth Squarefree

open erdos208

/--
Let $s_1 < s_2 < \dots$ be the sequence of squarefree numbers. Is it true that
for any $\epsilon > 0$ and large $n$, $s_{n+1} - s_n \ll_\epsilon s_n^\epsilon$?
-/
@[category research open, AMS 11]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/208/Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/208/Variantf1171e27c48b93a376e4f9e72151f91032b108620f0864b0a4774ec1cb098af1.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eeb190c67aa3a2f4ac69be4da77ac0c012932d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
