# toPresheafFiber_map_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11fb156c8413fa9532ac688020455afc19ae162d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c4c9dc2-ca87-544c-3a1b-d83635e949d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18931637-1be4-56c8-e1c0-5ac7cb6f08ad",
  "kind": "lemma",
  "lexical_name": "toPresheafFiber_map_injective",
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
  "slug": "topresheaffiber-map-injective--b99d04cb233e7a0f95dd54f9",
  "source": {
    "blob": "11fb156c8413fa9532ac688020455afc19ae162d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b99d04cb233e7a0f95dd54f9e854d5da12d652cec0918eeafd60f717ad4343bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18931637-1be4-56c8-e1c0-5ac7cb6f08ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toPresheafFiber_map_injective [Presheaf.IsLocallyInjective J f] :
    Function.Injective (Φ.presheafFiber.map f) := by
  suffices ∀ (X : C) (x : Φ.fiber.obj X) (p₁ p₂ : ToType (P.obj (op X)))
      (hp : f.app _ p₁ = f.app _ p₂), Φ.toPresheafFiber X x P p₁ = Φ.toPresheafFiber X x P p₂ by
    rintro q₁ q₂ h
    obtain ⟨X, x, p₁, p₂, rfl, rfl⟩ := Φ.toPresheafFiber_jointly_surjective₂ q₁ q₂
    simp only [toPresheafFiber_naturality_apply, toPresheafFiber_eq_iff'] at h
    obtain ⟨Y, g, y, rfl, h⟩ := h
    simp only [← NatTrans.naturality_apply] at h
    simpa using this _ y _ _ h
  intro X x p₁ p₂ h
  obtain ⟨Y, g, hg, y, rfl⟩ := Φ.jointly_surjective _ (Presheaf.equalizerSieve_mem J f _ _ h) x
  simp_all [← toPresheafFiber_w_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7da726fb630e28adc147ed22a1cc8214a6f9d0480af6aa2ac59e0a06a58cfa40.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11fb156c8413fa9532ac688020455afc19ae162d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
