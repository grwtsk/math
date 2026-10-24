# order_conj_conj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4914a19f-6be6-ceb4-a3b6-3111c8459c36",
  "kind": "theorem",
  "lexical_name": "order_conj_conj",
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
  "slug": "order-conj-conj--d4ad4ba5fa89c19eb884761d",
  "source": {
    "blob": "3bb6eb323e9eb5aaf484441e81250e2e4cffad7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4ad4ba5fa89c19eb884761d95e1d1b6182c5a1c2de256ba0bf511c4f882ce80",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4914a19f-6be6-ceb4-a3b6-3111c8459c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem order_conj_conj {f : ℂ → ℂ} {s : ℂ} (hf : AnalyticAt ℂ f s)
    (hfinite : analyticOrderAt f s ≠ ⊤) :
    analyticOrderAt (fun z ↦ conj (f (conj z))) (conj s) = analyticOrderAt f s := by
  obtain ⟨n, hn⟩ := ENat.ne_top_iff_exists.mp hfinite
  rw [← hn]
  apply (analytic_conj_conj hf).analyticOrderAt_eq_natCast.mpr
  obtain ⟨g, hga, hgn, heq⟩ := hf.analyticOrderAt_eq_natCast.mp hn.symm
  refine ⟨fun z ↦ conj (g (conj z)), analytic_conj_conj hga, ?_, ?_⟩
  · simpa using hgn
  · have ht : Tendsto conj (𝓝 (conj s)) (𝓝 s) := by
      simpa using (continuous_conj.tendsto (conj s))
    filter_upwards [ht.eventually heq] with z hz
    simp only [hz, smul_eq_mul, map_mul, map_pow, map_sub, conj_conj]

/-- Reality of the actual zeta function preserves analytic multiplicity under conjugation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Variantb57ca6937b80faef69e220326c150328302fb749baca5c66f59737488f91b546.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bb6eb323e9eb5aaf484441e81250e2e4cffad7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
