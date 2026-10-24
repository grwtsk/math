# trivial_zero_principal_part

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86027285-e5d4-4fec-4703-0f0ebf131c2c",
  "kind": "theorem",
  "lexical_name": "trivial_zero_principal_part",
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
  "slug": "trivial-zero-principal-part--d239055ffd47b2295e527c94",
  "source": {
    "blob": "dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 185,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d239055ffd47b2295e527c940831174e3694f6686cfe6419c5428d4eb1a57970",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86027285-e5d4-4fec-4703-0f0ebf131c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivial_zero_principal_part (k : ℕ) :
    ∃ A : ℂ → ℂ, AnalyticAt ℂ A (trivialPoint k) ∧
      (logDeriv riemannZeta =ᶠ[𝓝[≠] (trivialPoint k)]
        fun s => 1 / (s - trivialPoint k) + A s) := by
  have hne : trivialPoint k ≠ 1 := by
    intro same
    have hn := trivialPoint_re_neg k
    rw [same] at hn
    norm_num at hn
  have ha : AnalyticAt ℂ riemannZeta (trivialPoint k) :=
    analyticOn_riemannZeta (trivialPoint k) hne
  have horder : analyticOrderAt riemannZeta (trivialPoint k) = (1 : ℕ∞) :=
    ha.analyticOrderAt_eq_one_of_zero_deriv_ne_zero
      (zeta_trivialPoint k) (deriv_zeta_trivialPoint_ne_zero k)
  obtain ⟨g, hg, hg0, hfactor⟩ :=
    ha.analyticOrderAt_eq_natCast.mp horder
  have hfactor' : riemannZeta =ᶠ[𝓝[≠] (trivialPoint k)]
      fun s => (s - trivialPoint k) ^ (1 : ℤ) * g s := by
    simpa only [zpow_one, smul_eq_mul] using
      hfactor.filter_mono nhdsWithin_le_nhds
  have hp := logDeriv_principal_part riemannZeta g (trivialPoint k) (1 : ℤ)
    hg hg0 hfactor'
  exact ⟨logDeriv g, hp.1, by simpa using hp.2⟩

/-- The exact remaining local input: one analytic germ of the RAW remainder at
each member of the finite singular head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
