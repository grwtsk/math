# exists_sum_tmul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc71221ee5a2116843fcc9c9c45f604dca6d399c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b77503ef-802d-4404-65c0-078ec6fb78b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df3347fa-301c-c6d7-147a-31893b7a2e5a",
  "kind": "lemma",
  "lexical_name": "exists_sum_tmul_eq",
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
  "slug": "exists-sum-tmul-eq--7f98b98d96164c1b289a1a45",
  "source": {
    "blob": "bc71221ee5a2116843fcc9c9c45f604dca6d399c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 182,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f98b98d96164c1b289a1a4504eefb870cfed8eff45783a3b433941a86356fee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df3347fa-301c-c6d7-147a-31893b7a2e5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_sum_tmul_eq (x : M ⊗[R] N) :
    ∃ (k : ℕ) (m : Fin k → M) (n : Fin k → N), x = ∑ j, m j ⊗ₜ n j := by
  induction x with
  | tmul x y => exact ⟨1, fun _ ↦ x, fun _ ↦ y, by simp⟩
  | add x y hx hy =>
    obtain ⟨kx, mx, nx, rfl⟩ := hx
    obtain ⟨ky, my, ny, rfl⟩ := hy
    use kx + ky, Fin.addCases mx my, Fin.addCases nx ny
    simp [Fin.sum_univ_add]

end TensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc71221ee5a2116843fcc9c9c45f604dca6d399c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
