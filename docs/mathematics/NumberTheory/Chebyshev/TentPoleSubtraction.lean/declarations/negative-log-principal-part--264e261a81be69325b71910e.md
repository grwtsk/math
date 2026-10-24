# negative_log_principal_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4b35fc0-2620-cb64-c43e-c44a4ec4cdbc",
  "kind": "theorem",
  "lexical_name": "negative_log_principal_part",
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
  "slug": "negative-log-principal-part--264e261a81be69325b71910e",
  "source": {
    "blob": "e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 125,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:264e261a81be69325b71910e528b5972ee5b6b92c327e804b93975adae5480e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4b35fc0-2620-cb64-c43e-c44a4ec4cdbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negative_log_principal_part (p : ℂ) (hp : p = 1 ∨ riemannZeta p = 0) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A p ∧
      (fun z => -logDeriv riemannZeta z) =ᶠ[𝓝[≠] p]
        fun z => logCoefficient p / (z - p) + A z := by
  rcases hp with rfl | hp
  · refine ⟨fun z => -logDeriv riemannZeta₁ z, zeta_pole_principal_part.1.neg, ?_⟩
    filter_upwards [zeta_pole_principal_part.2] with z hz
    rw [logCoefficient_one, hz]
    ring
  · rcases (zeta_zero_iff p).mp hp with hnt | ⟨k, rfl⟩
    · obtain ⟨A, hA, he⟩ := canonical_zero_principal_part ⟨p, hnt⟩
      refine ⟨fun z => -A z, hA.neg, ?_⟩
      filter_upwards [he] with z hz
      rw [show logCoefficient p = -(multiplicity ⟨p, hnt⟩ : ℂ) from
        logCoefficient_nontrivial ⟨p, hnt⟩, hz]
      ring
    · have hne : trivialPoint k ≠ 1 := by
        intro he
        exact riemannZeta_one_ne_zero (he ▸ zeta_trivialPoint k)
      obtain ⟨A, hA, he⟩ := simple_zero_log_principal_part riemannZeta (trivialPoint k)
        (analyticOn_riemannZeta _ hne) (zeta_trivialPoint k) (deriv_zeta_trivialPoint_ne_zero k)
      refine ⟨fun z => -A z, hA.neg, ?_⟩
      filter_upwards [he] with z hz
      rw [logCoefficient_trivial, hz]
      ring

/-- The multiplier's divided difference supplies the otherwise missing analytic term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentPoleSubtraction.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e69b6c9ff37eb8f8dcd8a01b1f8c2fc5f1f40ea4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
