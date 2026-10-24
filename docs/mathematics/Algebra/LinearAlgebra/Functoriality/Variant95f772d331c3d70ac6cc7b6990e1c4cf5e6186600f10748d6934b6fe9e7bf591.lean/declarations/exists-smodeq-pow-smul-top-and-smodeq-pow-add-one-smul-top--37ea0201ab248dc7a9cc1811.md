# exists_smodEq_pow_smul_top_and_smodEq_pow_add_one_smul_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cd81f33807254ee6729e94daa32cb3a68807c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8aa862aa-a678-970e-82cd-25078febd0da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d17ae0cd-6080-c954-f985-0230d4d70c82",
  "kind": "theorem",
  "lexical_name": "exists_smodEq_pow_smul_top_and_smodEq_pow_add_one_smul_top",
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
  "slug": "exists-smodeq-pow-smul-top-and-smodeq-pow-add-one-smul-top--37ea0201ab248dc7a9cc1811",
  "source": {
    "blob": "8cd81f33807254ee6729e94daa32cb3a68807c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 403,
    "line": 392,
    "path": "GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37ea0201ab248dc7a9cc18110d3959e361750d18e16a2fa7fd471856ae3c7106",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d17ae0cd-6080-c954-f985-0230d4d70c82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–403.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_smodEq_pow_smul_top_and_smodEq_pow_add_one_smul_top {f : M →ₗ[R] N}
    (h : Function.Surjective (mkQ (I • ⊤) ∘ₗ f)) {x : M} {y : N} {n : ℕ}
    (hxy : f x ≡ y [SMOD (I ^ n • ⊤ : Submodule R N)]) :
    ∃ x' : M, x ≡ x' [SMOD (I ^ n • ⊤ : Submodule R M)] ∧
    f x' ≡ y [SMOD (I ^ (n + 1) • ⊤ : Submodule R N)] := by
  obtain ⟨z, hz, hz'⟩ :=
    exists_smodEq_pow_add_one_smul h (y := y - f x) (SModEq.sub_mem.mp hxy.symm)
  use x + z
  constructor
  · simpa [SModEq.sub_mem]
  · simpa [SModEq.sub_mem, sub_sub_eq_add_sub, add_comm] using hz'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Functoriality/Variant95f772d331c3d70ac6cc7b6990e1c4cf5e6186600f10748d6934b6fe9e7bf591.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cd81f33807254ee6729e94daa32cb3a68807c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
