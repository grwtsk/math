# lhopital_zero_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec1e5a15-e4fd-3b96-40d6-cacc0250a8e8",
  "kind": "theorem",
  "lexical_name": "lhopital_zero_atTop",
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
  "slug": "lhopital-zero-attop--5ce85645258231f6da9d74af",
  "source": {
    "blob": "228345c9479667b9da4cc94ce7fb391fe0fa6e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 431,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ce85645258231f6da9d74af9af265b83101ce3239660af86645acdba9128e42",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec1e5a15-e4fd-3b96-40d6-cacc0250a8e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lhopital_zero_atTop (hdf : ∀ᶠ x : ℝ in atTop, DifferentiableAt ℝ f x)
    (hg' : ∀ᶠ x : ℝ in atTop, deriv g x ≠ 0) (hftop : Tendsto f atTop (𝓝 0))
    (hgtop : Tendsto g atTop (𝓝 0)) (hdiv : Tendsto (fun x => (deriv f) x / (deriv g) x) atTop l) :
    Tendsto (fun x => f x / g x) atTop l := by
  have hdg : ∀ᶠ x in atTop, DifferentiableAt ℝ g x := hg'.mp
    (Eventually.of_forall fun _ hg' =>
      by_contradiction fun h => hg' (deriv_zero_of_not_differentiableAt h))
  have hdf' : ∀ᶠ x in atTop, HasDerivAt f (deriv f x) x :=
    hdf.mono fun _ => DifferentiableAt.hasDerivAt
  have hdg' : ∀ᶠ x in atTop, HasDerivAt g (deriv g x) x :=
    hdg.mono fun _ => DifferentiableAt.hasDerivAt
  exact HasDerivAt.lhopital_zero_atTop hdf' hdg' hg' hftop hgtop hdiv

/-- **L'Hôpital's rule** for approaching -∞, `deriv` version -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228345c9479667b9da4cc94ce7fb391fe0fa6e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
