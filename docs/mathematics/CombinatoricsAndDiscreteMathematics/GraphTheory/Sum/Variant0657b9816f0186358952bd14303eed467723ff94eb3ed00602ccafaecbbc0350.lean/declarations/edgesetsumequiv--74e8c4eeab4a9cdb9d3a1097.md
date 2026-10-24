# edgeSetSumEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:810224ad638e480db23da38771077d3b93c309fbd4d57d9779c1252b97592da3",
  "kind": "def",
  "lexical_name": "edgeSetSumEquiv",
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
  "slug": "edgesetsumequiv--74e8c4eeab4a9cdb9d3a1097",
  "source": {
    "blob": "75291901cd9c235beb2173e9688fb37d580d41e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 152,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74e8c4eeab4a9cdb9d3a10973bae0dd74984c5bed329a6392186156db0f7533e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:810224ad638e480db23da38771077d3b93c309fbd4d57d9779c1252b97592da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def edgeSetSumEquiv : (G ⊕g H).edgeSet ≃ G.edgeSet ⊕ H.edgeSet where
  toFun :=
    fun ⟨e, he⟩ ↦ e.fromRelNdrec (sym := symm _) he (fun
      | Sum.inl u, Sum.inl v, h => .inl ⟨s(u, v), h⟩
      | Sum.inr u, Sum.inr v, h => .inr ⟨s(u, v), h⟩
      | Sum.inl u, Sum.inr v, h => by contradiction
      | Sum.inr u, Sum.inl v, h => by contradiction
    ) (by grind)
  invFun
    | Sum.inl ⟨e, he⟩ =>
      e.fromRelNdrec (sym := G.symm) he (fun u v h ↦ ⟨s(.inl u, .inl v), h⟩) <| by simp
    | Sum.inr ⟨e, he⟩ =>
      e.fromRelNdrec (sym := H.symm) he (fun u v h ↦ ⟨s(.inr u, .inr v), h⟩) <| by simp
  left_inv := by rintro ⟨⟨u | u, v | v⟩, h⟩ <;> first | contradiction | rfl
  right_inv := by rintro (⟨⟨u, v⟩, h⟩ | ⟨⟨u, v⟩, h⟩) <;> rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75291901cd9c235beb2173e9688fb37d580d41e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
