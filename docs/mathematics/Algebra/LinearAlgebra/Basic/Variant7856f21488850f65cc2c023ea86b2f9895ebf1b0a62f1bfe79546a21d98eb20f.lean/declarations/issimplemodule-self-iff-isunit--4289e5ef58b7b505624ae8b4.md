# isSimpleModule_self_iff_isUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b483316a477e936721c4f002b7aa31d398ef4d07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd136c56-28de-bcd1-d496-f7787d92abdf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5105219-f395-6b7f-e425-20309fb9d7de",
  "kind": "theorem",
  "lexical_name": "isSimpleModule_self_iff_isUnit",
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
  "slug": "issimplemodule-self-iff-isunit--4289e5ef58b7b505624ae8b4",
  "source": {
    "blob": "b483316a477e936721c4f002b7aa31d398ef4d07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 191,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4289e5ef58b7b505624ae8b4596ad9a3942277921120c4d0ff80acfd93e827dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a5105219-f395-6b7f-e425-20309fb9d7de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSimpleModule_self_iff_isUnit :
    IsSimpleModule R R ↔ Nontrivial R ∧ ∀ x : R, x ≠ 0 → IsUnit x :=
  isSimpleModule_iff_toSpanSingleton_surjective.trans <| and_congr_right fun _ ↦ by
    refine ⟨fun h x hx ↦ ?_, fun h x hx ↦ (h x hx).unit.mulRight_bijective.surjective⟩
    obtain ⟨y, hyx : y * x = 1⟩ := h x hx 1
    have hy : y ≠ 0 := left_ne_zero_of_mul (hyx.symm ▸ one_ne_zero)
    obtain ⟨z, hzy : z * y = 1⟩ := h y hy 1
    exact ⟨⟨x, y, left_inv_eq_right_inv hzy hyx ▸ hzy, hyx⟩, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant7856f21488850f65cc2c023ea86b2f9895ebf1b0a62f1bfe79546a21d98eb20f.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b483316a477e936721c4f002b7aa31d398ef4d07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
