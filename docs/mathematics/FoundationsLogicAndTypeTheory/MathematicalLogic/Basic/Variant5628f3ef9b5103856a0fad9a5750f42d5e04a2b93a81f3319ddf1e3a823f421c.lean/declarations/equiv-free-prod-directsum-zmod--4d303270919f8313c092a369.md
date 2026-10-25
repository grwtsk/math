# equiv_free_prod_directSum_zmod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e0823abf6d0f4a5d20f48042d8a5dd11617272f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fcf8e4ec-e8e9-6b74-cbc9-d2caae8ddacc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6352471-c21e-8420-4508-e77c3f22c4fa",
  "kind": "theorem",
  "lexical_name": "equiv_free_prod_directSum_zmod",
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
  "slug": "equiv-free-prod-directsum-zmod--4d303270919f8313c092a369",
  "source": {
    "blob": "e0823abf6d0f4a5d20f48042d8a5dd11617272f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d303270919f8313c092a369d02ef3448201c2e0a28b0b4f63f10affdfc116ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6352471-c21e-8420-4508-e77c3f22c4fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_free_prod_directSum_zmod [hG : AddGroup.FG G] :
    ∃ (n : ℕ) (ι : Type) (_ : Fintype ι) (p : ι → ℕ) (_ : ∀ i, Nat.Prime <| p i) (e : ι → ℕ),
      Nonempty <| G ≃+ (Fin n →₀ ℤ) × ⨁ i : ι, ZMod (p i ^ e i) := by
  obtain ⟨n, ι, fι, p, hp, e, ⟨f⟩⟩ :=
    @Module.equiv_free_prod_directSum _ _ _ _ _ _ _ (Module.Finite.iff_addGroup_fg.mpr hG)
  refine ⟨n, ι, fι, fun i => (p i).natAbs, fun i => ?_, e, ⟨?_⟩⟩
  · rw [← Int.prime_iff_natAbs_prime, ← irreducible_iff_prime]; exact hp i
  exact
    f.toAddEquiv.trans
      ((AddEquiv.refl _).prodCongr <|
        DFinsupp.mapRange.addEquiv fun i =>
          ((Int.quotientSpanEquivZMod _).trans <|
              ZMod.ringEquivCongr <| (p i).natAbs_pow _).toAddEquiv)

/-- **Structure theorem of finite abelian groups** : Any finite abelian group is a direct sum of
some `ZMod (p i ^ e i)` for some prime powers `p i ^ e i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5628f3ef9b5103856a0fad9a5750f42d5e04a2b93a81f3319ddf1e3a823f421c.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0823abf6d0f4a5d20f48042d8a5dd11617272f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
