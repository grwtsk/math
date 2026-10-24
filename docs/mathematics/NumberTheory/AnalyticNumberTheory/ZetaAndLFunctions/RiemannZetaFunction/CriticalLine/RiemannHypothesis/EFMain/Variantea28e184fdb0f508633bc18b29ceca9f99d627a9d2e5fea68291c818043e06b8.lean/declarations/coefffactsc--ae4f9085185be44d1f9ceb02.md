# CoeffFactsC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edb9e9507ef3f5dd19299eabbed0a45e884e89593c5cb164007d8c225bfb6f5b",
  "kind": "def",
  "lexical_name": "CoeffFactsC",
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
  "slug": "coefffactsc--ae4f9085185be44d1f9ceb02",
  "source": {
    "blob": "c57fe5609c1aaa5a3bc3b3ed696432c9c6ecc7f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae4f9085185be44d1f9ceb02748620c19a01db42928c8750ece6c1b32308a07c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edb9e9507ef3f5dd19299eabbed0a45e884e89593c5cb164007d8c225bfb6f5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CoeffFactsC : Prop :=
  (∃ R₀ : ℝ, 0 < R₀ ∧ ∀ Λs : ℂ, R₀ ≤ ‖Λs‖ → ∀ c : ℝ, 9/8 ≤ c → c ≤ 5/4 →
      Summable (fun N : ℕ => ‖xiCoeffJ' Λs N‖ * (N : ℝ) ^ (-c)) ∧
      ∀ t : ℝ, LSeries (xiCoeffJ' Λs) ((c:ℂ) + t * I)
        = Bfn ((c:ℂ) + t * I) / (Λs - Afn ((c:ℂ) + t * I))) ∧
  (∀ (Λs : ℂ) (N : ℕ), xiCoeffJ' (conj Λs) N = conj (xiCoeffJ' Λs N))

/-! ## 2. W at the real point 1 − c: the reflection identity by continuity -/

/-- the left strip −1/2 < Re s < 0: W is analytic there (no poles: Γℝ(s) and Γℝ(1−s) regular, s ≠ 1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57fe5609c1aaa5a3bc3b3ed696432c9c6ecc7f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
