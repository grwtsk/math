# exists_embedding_l_infty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59d1d8a8-9611-c4f6-d29e-b1a60badbcfe",
  "kind": "theorem",
  "lexical_name": "exists_embedding_l_infty",
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
  "slug": "exists-embedding-l-infty--6ed57cfe6f7a3ba389b798ab",
  "source": {
    "blob": "1a5a05820db602585f4c8b483d272230ab02b237",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 129,
    "path": "GRWTSK/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ed57cfe6f7a3ba389b798ab9ae31552f734db4e7a7a60c7a3aa1648197aefbf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d1d8a8-9611-c4f6-d29e-b1a60badbcfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_embedding_l_infty : ∃ f : X → ℕ →ᵇ ℝ, IsEmbedding f :=
  let ⟨f, hf⟩ := exists_isInducing_l_infty X; ⟨f, hf.isEmbedding⟩

/-- *Urysohn's metrization theorem* (Tychonoff's version): a T₃ topological space with second
countable topology `X` is metrizable, i.e., there exists a metric space structure that generates the
same topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a5a05820db602585f4c8b483d272230ab02b237` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
