# one_pole_subtraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a296e2d-60d2-b254-8786-d53a1e58d229",
  "kind": "theorem",
  "lexical_name": "one_pole_subtraction",
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
  "slug": "one-pole-subtraction--211d7068ee3f5d8490205c19",
  "source": {
    "blob": "1686ea7594c4c99791be80c7603cc94612f2150c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 81,
    "path": "GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:211d7068ee3f5d8490205c19cc6730aad848fc7a83a720ca371763490da2c17d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a296e2d-60d2-b254-8786-d53a1e58d229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_pole_subtraction (f A : ℂ → ℂ) (a c : ℂ)
    (hA : AnalyticAt ℂ A a)
    (hpart : f =ᶠ[𝓝[≠] a] fun z => c / (z - a) + A z) :
    ∃ g : ℂ → ℂ, AnalyticAt ℂ g a ∧
      ∀ z : ℂ, z ≠ a → g z = f z - c / (z - a) := by
  classical
  let g := Function.update (fun z => f z - c / (z - a)) a (A a)
  have hnear : g =ᶠ[𝓝 a] A := by
    have hp : ∀ᶠ z in 𝓝 a, z ≠ a → f z = c / (z - a) + A z :=
      eventually_nhdsWithin_iff.mp hpart
    filter_upwards [hp] with z hz
    by_cases hza : z = a
    · subst z
      simp only [g, Function.update_self]
    · change Function.update (fun z => f z - c / (z - a)) a (A a) z = A z
      rw [Function.update_of_ne hza, hz hza]
      ring
  exact ⟨g, hA.congr hnear.symm, fun z hz => Function.update_of_ne hz _ _⟩

/-- Finite local principal parts produce one analytic function on the whole declared domain.
The exact equality holds everywhere outside the finite set, not only on a sampled boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/FinitePoleSubtraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1686ea7594c4c99791be80c7603cc94612f2150c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
