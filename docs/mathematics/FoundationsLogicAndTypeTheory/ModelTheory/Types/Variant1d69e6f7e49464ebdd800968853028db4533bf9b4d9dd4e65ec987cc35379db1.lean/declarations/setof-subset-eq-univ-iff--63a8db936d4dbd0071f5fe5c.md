# setOf_subset_eq_univ_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce8c2432ced62fa9188bd95518f63884b85ed5ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d69e6f7e49464ebdd800968853028db4533bf9b4d9dd4e65ec987cc35379db1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:49aa406a-3b4f-fa55-58f0-bdee4f935482",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41640ffb-e994-ea13-c661-b12596b77f7d",
  "kind": "theorem",
  "lexical_name": "setOf_subset_eq_univ_iff",
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
  "slug": "setof-subset-eq-univ-iff--63a8db936d4dbd0071f5fe5c",
  "source": {
    "blob": "ce8c2432ced62fa9188bd95518f63884b85ed5ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant1d69e6f7e49464ebdd800968853028db4533bf9b4d9dd4e65ec987cc35379db1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63a8db936d4dbd0071f5fe5c9c16e149414bd35f29f2e57fe8dd4e550312a348",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant1d69e6f7e49464ebdd800968853028db4533bf9b4d9dd4e65ec987cc35379db1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41640ffb-e994-ea13-c661-b12596b77f7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setOf_subset_eq_univ_iff (S : L[[α]].Theory) :
    { p : T.CompleteType α | S ⊆ ↑p } = Set.univ ↔
      ∀ φ, φ ∈ S → (L.lhomWithConstants α).onTheory T ⊨ᵇ φ := by
  have h : { p : T.CompleteType α | S ⊆ ↑p } = ⋂₀ ((fun φ => { p | φ ∈ p }) '' S) := by
    ext
    simp [subset_def]
  simp_rw [h, sInter_eq_univ, ← setOf_mem_eq_univ_iff]
  refine ⟨fun h φ φS => h _ ⟨_, φS, rfl⟩, ?_⟩
  rintro h _ ⟨φ, h1, rfl⟩
  exact h _ h1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant1d69e6f7e49464ebdd800968853028db4533bf9b4d9dd4e65ec987cc35379db1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Types/Variant1d69e6f7e49464ebdd800968853028db4533bf9b4d9dd4e65ec987cc35379db1.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce8c2432ced62fa9188bd95518f63884b85ed5ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
