# exists_eq_const_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37aa4efe-fb60-8641-e866-0e5bf63af092",
  "kind": "theorem",
  "lexical_name": "exists_eq_const_of_compactSpace",
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
  "slug": "exists-eq-const-of-compactspace--dc1d6c9777e1c0441879ab72",
  "source": {
    "blob": "4ac438ded6e562e9336a3bfceb77fb691b9a618e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc1d6c9777e1c0441879ab7230f7368ce2564c9e6835dbcf6fb5fee018205d8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37aa4efe-fb60-8641-e866-0e5bf63af092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_const_of_compactSpace [PreconnectedSpace M] {f : M → F}
    (hf : MDifferentiable I 𝓘(ℂ, F) f) : ∃ v : F, f = Function.const M v :=
  hf.isLocallyConstant.exists_eq_const
#align mdifferentiable.exists_eq_const_of_compact_space MDifferentiable.exists_eq_const_of_compactSpace

end MDifferentiable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant9c2a18f0dbc20aabbf7b521ea0d7db189fedc46ab8604c631839e557fa610b69.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac438ded6e562e9336a3bfceb77fb691b9a618e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
