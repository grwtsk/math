# ContinuousMap.subsingleton_subalgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c0f6422e3a5546ec3d6f55eedf2b6cc180d9f3aa7b15f3293d96b7475d1db41",
  "kind": "instance",
  "lexical_name": "ContinuousMap.subsingleton_subalgebra",
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
  "slug": "continuousmap-subsingleton-subalgebra--4e73945e7fd2cf754a9dc7ae",
  "source": {
    "blob": "771d9f10602096033aaea54e48b2e114c0a6007c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 876,
    "line": 846,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e73945e7fd2cf754a9dc7ae8dca031b7d1e94dd955be58b36db3dc01d7776ae",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c0f6422e3a5546ec3d6f55eedf2b6cc180d9f3aa7b15f3293d96b7475d1db41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 846–876.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ContinuousMap.subsingleton_subalgebra (α : Type*) [TopologicalSpace α] (R : Type*)
    [CommSemiring R] [TopologicalSpace R] [TopologicalSemiring R] [Subsingleton α] :
    Subsingleton (Subalgebra R C(α, R)) :=
  ⟨fun s₁ s₂ => by
    cases isEmpty_or_nonempty α
    · haveI : Subsingleton C(α, R) := FunLike.coe_injective.subsingleton
      exact Subsingleton.elim _ _
    · inhabit α
      ext f
      have h : f = algebraMap R C(α, R) (f default) := by
        ext x'
        simp only [mul_one, Algebra.id.smul_eq_mul, algebraMap_apply]
        congr
        simp
      rw [h]
      simp only [Subalgebra.algebraMap_mem]⟩
#align continuous_map.subsingleton_subalgebra ContinuousMap.subsingleton_subalgebra

end AlgebraStructure

section ModuleOverContinuousFunctions

/-!
### Structure as module over scalar functions

If `M` is a module over `R`, then we show that the space of continuous functions from `α` to `M`
is naturally a module over the ring of continuous functions from `α` to `R`. -/


namespace ContinuousMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Algebra/Variant93aa45e1eb9f475cd9abb73a3841fcd4483067507e9658f6f5bb51702ffb5474.lean#L846).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771d9f10602096033aaea54e48b2e114c0a6007c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
