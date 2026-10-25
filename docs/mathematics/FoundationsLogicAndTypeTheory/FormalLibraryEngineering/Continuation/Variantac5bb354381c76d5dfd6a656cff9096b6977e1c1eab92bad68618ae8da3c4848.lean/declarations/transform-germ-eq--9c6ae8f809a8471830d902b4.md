# transform_germ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:530b88f8-1a25-005a-fb44-326fa3f7906b",
  "kind": "theorem",
  "lexical_name": "transform_germ_eq",
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
  "slug": "transform-germ-eq--9c6ae8f809a8471830d902b4",
  "source": {
    "blob": "9a2bc304c4bb43b770c5818ae0565aa2fc758a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 72,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c6ae8f809a8471830d902b4deb155628ae1f501ae1e65eca58fe47fd7e6cc07",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:530b88f8-1a25-005a-fb44-326fa3f7906b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transform_germ_eq (F : ℂ → ℂ)
    (hF : MeromorphicOn F {s : ℂ | 0 < s.re})
    (hinit : ∀ s : ℂ, 1 < s.re → F s = transform X μ s)
    (a : ℝ) (ha : 0 ≤ a)
    (hconv : ∀ t : ℝ, a < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (s : ℂ) (hs : a < s.re) : F =ᶠ[𝓝[≠] s] transform X μ := by
  let b : ℂ := (max 1 a + 1 : ℝ)
  have hb1 : 1 < b.re := by dsimp [b]; linarith [le_max_left (1 : ℝ) a]
  have hba : a < b.re := by dsimp [b]; linarith [le_max_right (1 : ℝ) a]
  have heq : F =ᶠ[𝓝[≠] b] transform X μ := by
    have hn : ∀ᶠ z : ℂ in 𝓝 b, 1 < z.re :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds hb1
    exact (hn.filter_mono nhdsWithin_le_nhds).mono (fun z hz ↦ hinit z hz)
  have hU : IsPreconnected {z : ℂ | a < z.re} :=
    ((convex_Ioi a).linear_preimage Complex.reLm).isPreconnected
  exact meromorphic_germ_eq (fun z hz ↦ hF z (lt_of_le_of_lt ha hz))
    (fun z hz ↦ (transform_analytic a hconv z hz).meromorphicAt) hU hba hs heq

/-- A meromorphic continuation analytic on the positive real axis forces all positive
Laplace parameters to be genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantac5bb354381c76d5dfd6a656cff9096b6977e1c1eab92bad68618ae8da3c4848.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2bc304c4bb43b770c5818ae0565aa2fc758a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
