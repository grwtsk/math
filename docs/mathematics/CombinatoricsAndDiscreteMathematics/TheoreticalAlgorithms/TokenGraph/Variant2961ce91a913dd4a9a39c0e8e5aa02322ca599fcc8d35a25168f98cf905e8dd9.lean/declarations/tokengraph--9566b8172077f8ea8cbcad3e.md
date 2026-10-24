# TokenGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2b251bc3376c0643ea329cf4fa4d67a82ed34f6e779ae0bdf8ab31d2f155068",
  "kind": "structure",
  "lexical_name": "TokenGraph",
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
  "slug": "tokengraph--9566b8172077f8ea8cbcad3e",
  "source": {
    "blob": "408081128b577617dc446ef45d7b304c16a0d5ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9566b8172077f8ea8cbcad3e5726d8d498cddcb98c781e61d9bb60c52401acb0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2b251bc3376c0643ea329cf4fa4d67a82ed34f6e779ae0bdf8ab31d2f155068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TokenGraph (text : TextCarrier) where
  tokenization : Tokenization text
  vertices : List (Span text)
  vertices_exact :
    vertices = tokenization.spans
  edges : List (SemanticEdge text)
  endpoints_registered :
    ∀ edge ∈ edges,
      edge.source ∈ vertices ∧
        edge.target ∈ vertices
  requiredConnections : List (ConnectivityObligation text)
  required_connected :
    ∀ obligation ∈ requiredConnections,
      ∃ edge ∈ edges,
        edge.source.SameCoordinates obligation.source ∧
        edge.target.SameCoordinates obligation.target ∧
        edge.relation = obligation.relation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TokenGraph/Variant2961ce91a913dd4a9a39c0e8e5aa02322ca599fcc8d35a25168f98cf905e8dd9.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `408081128b577617dc446ef45d7b304c16a0d5ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
