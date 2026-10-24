# isZero_stupidTrunc_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4a21bf38fef78084ffa90d5214b30450399939e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b9c95e4-d08a-c2e5-36f5-ffd9ddbad6ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe266a61-776e-ec7e-b951-740d8de1336d",
  "kind": "lemma",
  "lexical_name": "isZero_stupidTrunc_iff",
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
  "slug": "iszero-stupidtrunc-iff--9469a5ca21ec713ebfad267c",
  "source": {
    "blob": "f4a21bf38fef78084ffa90d5214b30450399939e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9469a5ca21ec713ebfad267c781a81e757d6cfbc79e6d18bdf459ca967ca76d4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe266a61-776e-ec7e-b951-740d8de1336d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isZero_stupidTrunc_iff :
    IsZero (K.stupidTrunc e) ↔ K.IsStrictlySupportedOutside e := by
  constructor
  · exact fun h ↦ ⟨fun i ↦
      ((eval _ _ (e.f i)).map_isZero h).of_iso (K.stupidTruncXIso e rfl).symm⟩
  · intro h
    rw [isZero_iff_isStrictlySupported_and_isStrictlySupportedOutside _ e]
    constructor
    · infer_instance
    · exact ⟨fun i ↦ (h.isZero i).of_iso (K.stupidTruncXIso e rfl)⟩

variable {K L M}

/-- The morphism `K.stupidTrunc e ⟶ L.stupidTrunc e` induced by a morphism `K ⟶ L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/StupidTrunc/Variant1e1cbf92b68cc23ec89a7cfc870a1f28220b5fc32e872de8b69d6643509502a0.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4a21bf38fef78084ffa90d5214b30450399939e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
