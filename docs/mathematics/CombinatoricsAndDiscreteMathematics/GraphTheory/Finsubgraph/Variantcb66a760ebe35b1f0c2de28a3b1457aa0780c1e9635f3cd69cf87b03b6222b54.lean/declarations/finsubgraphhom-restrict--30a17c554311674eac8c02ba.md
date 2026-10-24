# FinsubgraphHom.restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f14b33eb52ae35ba8190b8424071e68132e8352e03be9ca9627da444c22a9458",
  "kind": "def",
  "lexical_name": "FinsubgraphHom.restrict",
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
  "slug": "finsubgraphhom-restrict--30a17c554311674eac8c02ba",
  "source": {
    "blob": "d536e4b7b0dcc189e36a50e7dc3f794c2d0e8bf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30a17c554311674eac8c02ba10f0de942274ba39c7772f2e5889e950ba925f02",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f14b33eb52ae35ba8190b8424071e68132e8352e03be9ca9627da444c22a9458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FinsubgraphHom.restrict {G' G'' : G.Finsubgraph} (h : G'' ≤ G') (f : G' →fg F) : G'' →fg F := by
  refine ⟨fun ⟨v, hv⟩ => f.toFun ⟨v, h.1 hv⟩, ?_⟩
  rintro ⟨u, hu⟩ ⟨v, hv⟩ huv
  exact f.map_rel' (h.2 huv)

/-- The inverse system of finite homomorphisms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d536e4b7b0dcc189e36a50e7dc3f794c2d0e8bf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
