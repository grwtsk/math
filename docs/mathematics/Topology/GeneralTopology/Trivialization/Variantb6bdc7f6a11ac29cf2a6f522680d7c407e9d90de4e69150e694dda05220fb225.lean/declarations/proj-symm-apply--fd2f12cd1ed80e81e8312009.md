# proj_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0d3b1d6-4f52-5f48-71a8-72006f147d6a",
  "kind": "theorem",
  "lexical_name": "proj_symm_apply",
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
  "slug": "proj-symm-apply--fd2f12cd1ed80e81e8312009",
  "source": {
    "blob": "7abb9a7e47d2672a8c5875c34e97dbebde5f0ff0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 403,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd2f12cd1ed80e81e8312009cba25f715f5872596dcf57e4e842df498adf7057",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0d3b1d6-4f52-5f48-71a8-72006f147d6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proj_symm_apply {x : B × F} (hx : x ∈ e.target) : proj (e.toLocalHomeomorph.symm x) = x.1 :=
  e.toPretrivialization.proj_symm_apply hx
#align trivialization.proj_symm_apply Trivialization.proj_symm_apply

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variantb6bdc7f6a11ac29cf2a6f522680d7c407e9d90de4e69150e694dda05220fb225.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7abb9a7e47d2672a8c5875c34e97dbebde5f0ff0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
