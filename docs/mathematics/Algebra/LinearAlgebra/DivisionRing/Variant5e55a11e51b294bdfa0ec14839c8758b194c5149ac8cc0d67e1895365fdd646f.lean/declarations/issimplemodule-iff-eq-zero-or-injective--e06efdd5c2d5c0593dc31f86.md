# isSimpleModule_iff_eq_zero_or_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcc7d565-81b8-bc6e-b49c-721c31eda014",
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
  "slug": "issimplemodule-iff-eq-zero-or-injective--e06efdd5c2d5c0593dc31f86",
  "source": {
    "blob": "edec7d256ffb752ce46dbdab27ab794c17ae3cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant5e55a11e51b294bdfa0ec14839c8758b194c5149ac8cc0d67e1895365fdd646f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e06efdd5c2d5c0593dc31f8631fc650c9a5c21e9b8b92d704c1460f977768598",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DivisionRing/Variant5e55a11e51b294bdfa0ec14839c8758b194c5149ac8cc0d67e1895365fdd646f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcc7d565-81b8-bc6e-b49c-721c31eda014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–61.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DivisionRing/Variant5e55a11e51b294bdfa0ec14839c8758b194c5149ac8cc0d67e1895365fdd646f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DivisionRing/Variant5e55a11e51b294bdfa0ec14839c8758b194c5149ac8cc0d67e1895365fdd646f.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edec7d256ffb752ce46dbdab27ab794c17ae3cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
