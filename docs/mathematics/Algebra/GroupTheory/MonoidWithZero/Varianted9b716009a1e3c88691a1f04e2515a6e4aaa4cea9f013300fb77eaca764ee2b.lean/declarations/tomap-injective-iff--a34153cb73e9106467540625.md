# toMap_injective_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c927b5a-e488-e32b-6e0d-aa8714f44ffc",
  "kind": "theorem",
  "lexical_name": "toMap_injective_iff",
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
  "slug": "tomap-injective-iff--a34153cb73e9106467540625",
  "source": {
    "blob": "98ca45cc4647e4e4871aaf49e06726d6d4f59b83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 30,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a34153cb73e9106467540625ff284f29340c3f11fe6f87ae6a2ef8254bd8ec8e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c927b5a-e488-e32b-6e0d-aa8714f44ffc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMap_injective_iff
    {M N : Type*} [CommMonoid M] {S : Submonoid M} [CommMonoid N] (f : LocalizationMap S N) :
    Injective (LocalizationMap.toMap f) ↔ ∀ ⦃x⦄, x ∈ S → IsLeftRegular x := by
  rw [Injective]
  constructor <;> intro h
  · intro x hx y z hyz
    simp_rw [LocalizationMap.eq_iff_exists] at h
    apply (fun y z _ => h) y z x
    lift x to S using hx
    use x
  · intro a b hab
    rw [LocalizationMap.eq_iff_exists] at hab
    obtain ⟨c,hc⟩ := hab
    apply (fun x a => h a) c (SetLike.coe_mem c) hc

end Submonoid.LocalizationMap

section CommMonoidWithZero

variable {M : Type*} [CommMonoidWithZero M] (S : Submonoid M) (N : Type*) [CommMonoidWithZero N]
  {P : Type*} [CommMonoidWithZero P]

namespace Submonoid

variable {S N} in
/-- If `S` contains `0` then the localization at `S` is trivial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidWithZero/Varianted9b716009a1e3c88691a1f04e2515a6e4aaa4cea9f013300fb77eaca764ee2b.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ca45cc4647e4e4871aaf49e06726d6d4f59b83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
