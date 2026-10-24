# coeDeleteVertsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c07d3b12e65947d34ac3c50cb112c6c8cdaebfac35c9c97c4f165a4314c1d866",
  "kind": "def",
  "lexical_name": "coeDeleteVertsIso",
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
  "slug": "coedeletevertsiso--85980f3bec5551685fb7b375",
  "source": {
    "blob": "6655eb7ff5da76cf20409673705ca83fff2be164",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1384,
    "line": 1374,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantb137eb55796eeaedc832cf8a5e30bfdc9576fc442ffc98ebe1e2b2bc642d76b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85980f3bec5551685fb7b375d80b91bd58c5f7736df59e279aa8015396164e53",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantb137eb55796eeaedc832cf8a5e30bfdc9576fc442ffc98ebe1e2b2bc642d76b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c07d3b12e65947d34ac3c50cb112c6c8cdaebfac35c9c97c4f165a4314c1d866`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1374–1384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeDeleteVertsIso (s : Set V) :
    (G'.deleteVerts s).coe ≃g G'.coe.induce {v : G'.verts | ↑v ∉ s} where
  toFun := fun ⟨v, hv⟩ ↦ ⟨⟨v, Set.mem_of_mem_inter_left hv⟩, by aesop⟩
  invFun := fun ⟨v, hv⟩ ↦ ⟨v, by simp_all⟩
  map_rel_iff' := by simp

end DeleteVerts

end Subgraph

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantb137eb55796eeaedc832cf8a5e30bfdc9576fc442ffc98ebe1e2b2bc642d76b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variantb137eb55796eeaedc832cf8a5e30bfdc9576fc442ffc98ebe1e2b2bc642d76b6.lean#L1374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6655eb7ff5da76cf20409673705ca83fff2be164` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
