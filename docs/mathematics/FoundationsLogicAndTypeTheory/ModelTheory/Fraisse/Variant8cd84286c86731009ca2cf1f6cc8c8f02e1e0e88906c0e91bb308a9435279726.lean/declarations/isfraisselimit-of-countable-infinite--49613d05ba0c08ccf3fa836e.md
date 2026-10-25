# isFraisseLimit_of_countable_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fa871b92a9defdd97c080622ce4965535e25d78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2458a953-5019-1318-55f3-2f539e925cb3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53b7d747-d9e3-1aad-0cb3-17bed7f08288",
  "kind": "theorem",
  "lexical_name": "isFraisseLimit_of_countable_infinite",
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
  "slug": "isfraisselimit-of-countable-infinite--49613d05ba0c08ccf3fa836e",
  "source": {
    "blob": "3fa871b92a9defdd97c080622ce4965535e25d78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 411,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49613d05ba0c08ccf3fa836e274909089b1c6ef3bd58a89a27a033e941848fe5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53b7d747-d9e3-1aad-0cb3-17bed7f08288`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFraisseLimit_of_countable_infinite
    (M : Type*) [Countable M] [Infinite M] [Language.empty.Structure M] :
    IsFraisseLimit { S : Bundled Language.empty.Structure | Finite S } M where
  age := by
    ext S
    simp only [age, Structure.fg_iff_finite, mem_setOf_eq, and_iff_left_iff_imp]
    intro hS
    simp
  ultrahomogeneous S hS f := by
    classical
    have : Finite S := hS.finite
    have : Infinite { x // x ∉ S } := ((Set.toFinite _).infinite_compl).to_subtype
    have : Finite f.toHom.range := (((Substructure.fg_iff_structure_fg S).1 hS).range _).finite
    have : Infinite { x // x ∉ f.toHom.range } := ((Set.toFinite _).infinite_compl ).to_subtype
    refine ⟨StrongHomClass.toEquiv (f.equivRange.subtypeCongr nonempty_equiv_of_countable.some), ?_⟩
    ext x
    simp [Equiv.subtypeCongr]

/-- The class of finite structures in the empty language is Fraïssé. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Fraisse/Variant8cd84286c86731009ca2cf1f6cc8c8f02e1e0e88906c0e91bb308a9435279726.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fa871b92a9defdd97c080622ce4965535e25d78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
