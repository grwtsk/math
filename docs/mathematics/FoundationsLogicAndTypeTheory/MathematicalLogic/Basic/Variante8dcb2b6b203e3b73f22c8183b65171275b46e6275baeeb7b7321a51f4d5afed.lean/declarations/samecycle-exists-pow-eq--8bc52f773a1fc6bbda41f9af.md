# SameCycle.exists_pow_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "723d6f7b59f32dd9ec0da0d7210417369b84f892",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de066414-513a-e1bc-eacb-3d86a4b89d3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8421ad62-b871-8842-67d3-8f9c400a6f88",
  "kind": "theorem",
  "lexical_name": "SameCycle.exists_pow_eq'",
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
  "slug": "samecycle-exists-pow-eq--8bc52f773a1fc6bbda41f9af",
  "source": {
    "blob": "723d6f7b59f32dd9ec0da0d7210417369b84f892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 183,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bc52f773a1fc6bbda41f9aff0b5fbe0cfff04b00f66e944aa45c021856b92f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8421ad62-b871-8842-67d3-8f9c400a6f88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SameCycle.exists_pow_eq' [Finite α] : SameCycle f x y → ∃ i < orderOf f, (f ^ i) x = y := by
  rintro ⟨k, rfl⟩
  use (k % orderOf f).natAbs
  have h₀ := Int.natCast_pos.mpr (orderOf_pos f)
  have h₁ := Int.emod_nonneg k h₀.ne'
  rw [← zpow_natCast, Int.natAbs_of_nonneg h₁, zpow_mod_orderOf]
  refine ⟨?_, by rfl⟩
  rw [← Int.ofNat_lt, Int.natAbs_of_nonneg h₁]
  exact Int.emod_lt_of_pos _ h₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variante8dcb2b6b203e3b73f22c8183b65171275b46e6275baeeb7b7321a51f4d5afed.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `723d6f7b59f32dd9ec0da0d7210417369b84f892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
