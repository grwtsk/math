# Inv_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66ee91260699e7f9aa3377e955d1d1b0c9709baa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3358efe0-61c6-7e62-383d-1f55c403c7fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:754ee8e6-1884-9232-4387-d7831c52b0f8",
  "kind": "theorem",
  "lexical_name": "Inv_insert",
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
  "slug": "inv-insert--5b9d3b8e7096fb6e1282e790",
  "source": {
    "blob": "66ee91260699e7f9aa3377e955d1d1b0c9709baa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b9d3b8e7096fb6e1282e7906b41aa390ea234661af17ee9c9fd557caf273be6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:754ee8e6-1884-9232-4387-d7831c52b0f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Inv_insert (cache : Cache aig) (expr : BVExpr w) (refs : AIG.RefVec aig w)
    (hinv : Inv assign aig cache)
    (hrefs : ∀ (idx : Nat) (hidx : idx < w), ⟦aig, refs.get idx hidx, assign.toAIGAssignment⟧ = (expr.eval assign).getLsbD idx) :
    Inv assign aig (cache.insert expr refs) := by
  intro k hk i hi
  by_cases heq : ⟨w, expr⟩ = k
  · rcases k with ⟨kw, kexpr⟩
    simp only [Key.mk.injEq] at heq
    rcases heq with ⟨hkeq, hexpr⟩
    subst hkeq
    replace hexpr := eq_of_heq hexpr
    subst hexpr
    have : ((cache.insert expr refs).map.get ⟨w, expr⟩ hk) = refs.refs := by
      unfold Cache.insert
      apply Std.DHashMap.get_insert_self
    specialize hrefs i hi
    rw [← hrefs]
    congr 3
    all_goals
      rw [getElem_congr_coll]
      exact this
  · have hmem : k ∈ cache.map := by
      unfold Cache.insert at hk
      apply Std.DHashMap.mem_of_mem_insert
      · exact hk
      · simp [heq]
    have : ((cache.insert expr refs).map.get k hk) = cache.map.get k hmem := by
      simp only [Cache.insert]
      rw [Std.DHashMap.get_insert]
      simp [heq]
    specialize hinv k hmem i hi
    rw [← hinv]
    congr 3
    all_goals
      rw [getElem_congr_coll]
      exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66ee91260699e7f9aa3377e955d1d1b0c9709baa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
