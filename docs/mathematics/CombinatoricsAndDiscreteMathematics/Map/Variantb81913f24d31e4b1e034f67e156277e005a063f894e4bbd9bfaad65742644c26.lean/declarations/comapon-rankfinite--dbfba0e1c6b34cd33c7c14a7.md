# comapOn_rankFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f07e23278166d5a9e5e7160df60aa9159afed22db298ede9bc353516e2a4be0",
  "kind": "instance",
  "lexical_name": "comapOn_rankFinite",
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
  "slug": "comapon-rankfinite--dbfba0e1c6b34cd33c7c14a7",
  "source": {
    "blob": "17aa9b0836ec3f947e34646ad00f10cc2ea144f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 287,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantb81913f24d31e4b1e034f67e156277e005a063f894e4bbd9bfaad65742644c26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dbfba0e1c6b34cd33c7c14a78579e2bd6485a56de874dd47008d403ffd1c0366",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Map/Variantb81913f24d31e4b1e034f67e156277e005a063f894e4bbd9bfaad65742644c26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f07e23278166d5a9e5e7160df60aa9159afed22db298ede9bc353516e2a4be0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance comapOn_rankFinite [N.RankFinite] : (N.comapOn E f).RankFinite := by
  rw [comapOn]; infer_instance

end comapOn
section mapSetEmbedding

set_option backward.isDefEq.respectTransparency false in
/-- Map a matroid `M` to an isomorphic copy in `β` using an embedding `M.E ↪ β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Map/Variantb81913f24d31e4b1e034f67e156277e005a063f894e4bbd9bfaad65742644c26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Map/Variantb81913f24d31e4b1e034f67e156277e005a063f894e4bbd9bfaad65742644c26.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17aa9b0836ec3f947e34646ad00f10cc2ea144f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
