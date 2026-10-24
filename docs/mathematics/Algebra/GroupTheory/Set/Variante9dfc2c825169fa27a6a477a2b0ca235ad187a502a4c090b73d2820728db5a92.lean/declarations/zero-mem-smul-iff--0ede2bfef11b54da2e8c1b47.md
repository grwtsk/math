# zero_mem_smul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e7ae3b27b136674c5faa70e2d9d88ee3b531f1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9dfc2c825169fa27a6a477a2b0ca235ad187a502a4c090b73d2820728db5a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66e61f59-6aac-7b69-d163-31f477eb968a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82be5981-2202-2311-3892-b32837245686",
  "kind": "lemma",
  "lexical_name": "zero_mem_smul_iff",
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
  "slug": "zero-mem-smul-iff--0ede2bfef11b54da2e8c1b47",
  "source": {
    "blob": "8e7ae3b27b136674c5faa70e2d9d88ee3b531f1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 62,
    "path": "GRWTSK/Algebra/GroupTheory/Set/Variante9dfc2c825169fa27a6a477a2b0ca235ad187a502a4c090b73d2820728db5a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ede2bfef11b54da2e8c1b4767d1054748698755544fc0a04f7ca01de74a29bf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Set/Variante9dfc2c825169fa27a6a477a2b0ca235ad187a502a4c090b73d2820728db5a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82be5981-2202-2311-3892-b32837245686`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zero_mem_smul_iff : 0 ∈ s • t ↔ 0 ∈ s ∧ t.Nonempty ∨ 0 ∈ t ∧ s.Nonempty where
  mp | ⟨a, ha, b, hb, h⟩ => by
      obtain rfl | rfl := smul_eq_zero.1 h; exacts [.inl ⟨ha, b, hb⟩, .inr ⟨hb, a, ha⟩]
  mpr
  | .inl ⟨hs, b, hb⟩ => ⟨0, hs, b, hb, zero_smul _ _⟩
  | .inr ⟨ht, a, ha⟩ => ⟨a, ha, 0, ht, smul_zero _⟩

end Semiring

section Ring
variable [Ring α] [AddCommGroup β] [Module α β] (a : α) (s : Set α) (t : Set β)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Set/Variante9dfc2c825169fa27a6a477a2b0ca235ad187a502a4c090b73d2820728db5a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Set/Variante9dfc2c825169fa27a6a477a2b0ca235ad187a502a4c090b73d2820728db5a92.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e7ae3b27b136674c5faa70e2d9d88ee3b531f1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
