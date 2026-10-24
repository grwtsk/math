# isSimpleModule_iff_eq_zero_or_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f6a436fa1fe727e4f42db67bd0a5e183a78087d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b8e2713-868b-bab1-e6fd-6647123ff004",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2731227f-009a-0074-72f7-c5bc21897dbd",
  "kind": "lemma",
  "lexical_name": "isSimpleModule_iff_eq_zero_or_injective",
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
  "slug": "issimplemodule-iff-eq-zero-or-injective--a96933708dddb04565fa04d2",
  "source": {
    "blob": "7f6a436fa1fe727e4f42db67bd0a5e183a78087d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 45,
    "path": "GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a96933708dddb04565fa04d2fdf00d5aa1e9cea661823502c1d01c01284c7390",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DivisionRing/Variant60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2731227f-009a-0074-72f7-c5bc21897dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSimpleModule_iff_eq_zero_or_injective (R : Type u) (M : Type v) [Ring R] [AddCommGroup M]
    [Module R M] : IsSimpleModule R M ↔ (Nontrivial M ∧ ∀ (N : Type v) [AddCommGroup N]
    [Module R N] (f : M →ₗ[R] N), f = 0 ∨ Function.Injective f) :=
  ⟨fun hM ↦ ⟨Submodule.nontrivial_iff _|>.1 hM.1.1, fun N _ _ f ↦ hM.1.2 (LinearMap.ker f)|>.elim
    (fun h ↦ Or.inr <| by rwa [LinearMap.ker_eq_bot] at h) (fun h ↦ Or.inl <|by simp_all)⟩,
  fun ⟨hM1, hM2⟩ ↦ isSimpleModule_iff R M|>.2 ⟨fun p ↦ (hM2 (M ⧸ p) p.mkQ).elim
  (fun h ↦ Or.inr <| by simpa [Submodule.ext_iff, LinearMap.ext_iff] using h)
  (fun h ↦ Or.inl <| eq_bot_iff.2 fun x hx ↦ h (by simp [hx]))⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DivisionRing/Variant60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant60d8295c72953dceb3b310e58db4ed86a20ad3c2e4c1599713500f6e2302da8e.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f6a436fa1fe727e4f42db67bd0a5e183a78087d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
