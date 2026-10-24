# LinearMap.eventually_iSup_ker_pow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5e11dc60fa86eacb1d9e27c38ebef2c0e2d6006",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b684dc1-a4ae-3efb-c702-d5b34c2136d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4e457fe-bc75-88f0-8a7f-6cc0ec02cd4c",
  "kind": "lemma",
  "lexical_name": "LinearMap.eventually_iSup_ker_pow_eq",
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
  "slug": "linearmap-eventually-isup-ker-pow-eq--4e5266cc1b6fc0734a99e416",
  "source": {
    "blob": "b5e11dc60fa86eacb1d9e27c38ebef2c0e2d6006",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 182,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e5266cc1b6fc0734a99e416d4df66231d160b4a211f7bee28321862a874b88e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4e457fe-bc75-88f0-8a7f-6cc0ec02cd4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearMap.eventually_iSup_ker_pow_eq (f : M →ₗ[R] M) :
    ∀ᶠ n in atTop, ⨆ m, LinearMap.ker (f ^ m) = LinearMap.ker (f ^ n) := by
  obtain ⟨n, hn : ∀ m, n ≤ m → ker (f ^ n) = ker (f ^ m)⟩ :=
    monotone_stabilizes_iff_noetherian.mpr inferInstance f.iterateKer
  refine eventually_atTop.mpr ⟨n, fun m hm ↦ ?_⟩
  refine le_antisymm (iSup_le fun l ↦ ?_) (le_iSup (fun i ↦ LinearMap.ker (f ^ i)) m)
  rcases le_or_lt m l with h | h
  · rw [← hn _ (hm.trans h), hn _ hm]
  · exact f.iterateKer.monotone h.le

end

/-- A (semi)ring is Noetherian if it is Noetherian as a module over itself,
i.e. all its ideals are finitely generated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant1b33023bd9721933d624834ffc61055f1c824df52fa5f043b0b6f75cb93a9cfa.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5e11dc60fa86eacb1d9e27c38ebef2c0e2d6006` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
