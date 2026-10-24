# exists_lt_of_limsup_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e61e485b4114ebb9b0b55fabec32a39113e2b23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 794,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac1b35bf-eb47-2a7a-25fc-06453f44926c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a4ea838-4676-af3f-5e4a-b28f3a59e695",
  "kind": "theorem",
  "lexical_name": "exists_lt_of_limsup_le",
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
  "slug": "exists-lt-of-limsup-le--c8beeef70163196a6b816eb2",
  "source": {
    "blob": "6e61e485b4114ebb9b0b55fabec32a39113e2b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 803,
    "line": 794,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8beeef70163196a6b816eb20c9e001f5d92a7039231b1c3575007286d50a20d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a4ea838-4676-af3f-5e4a-b28f3a59e695`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 794–803.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_of_limsup_le [AddZeroClass α] [AddLeftStrictMono α] {x ε : α} {u : ℕ → α}
    (hu_bdd : IsBoundedUnder LE.le atTop u) (hu : Filter.limsup u atTop ≤ x) (hε : 0 < ε) :
    ∃ n : PNat, u n < x + ε := by
  have h : ∀ᶠ n : ℕ in atTop, u n < x + ε := eventually_lt_add_pos_of_limsup_le hu_bdd hu hε
  simp only [eventually_atTop] at h
  obtain ⟨n, hn⟩ := h
  exact ⟨⟨n + 1, Nat.succ_pos _⟩, hn (n + 1) (Nat.le_succ _)⟩

/-- If `x ≤ Filter.liminf u atTop`, then for all `ε < 0`, there exists a positive natural
number `n` such that ` x + ε < u n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LiminfLimsup/Variant4bdbf74997a94f7f60ac8afffd4692312d5351cfbc2e05afc05273fe83e5bb95.lean#L794).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e61e485b4114ebb9b0b55fabec32a39113e2b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
