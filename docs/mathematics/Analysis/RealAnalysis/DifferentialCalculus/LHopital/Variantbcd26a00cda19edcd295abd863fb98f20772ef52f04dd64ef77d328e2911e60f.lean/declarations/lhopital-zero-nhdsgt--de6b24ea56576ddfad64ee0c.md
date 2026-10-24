# lhopital_zero_nhdsGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed5037cd0c85e279b7e8da3ec04e11b7258aaa77",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c3f90ae-9d5c-3d08-1336-ae1dcfa747d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1aa39fb7-260d-9e41-9ffe-b057b2b29b3e",
  "kind": "theorem",
  "lexical_name": "lhopital_zero_nhdsGT",
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
  "slug": "lhopital-zero-nhdsgt--de6b24ea56576ddfad64ee0c",
  "source": {
    "blob": "ed5037cd0c85e279b7e8da3ec04e11b7258aaa77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 366,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de6b24ea56576ddfad64ee0c23338795133e267ccf0415b18d9fb039ed14a41b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1aa39fb7-260d-9e41-9ffe-b057b2b29b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lhopital_zero_nhdsGT (hdf : ∀ᶠ x in 𝓝[>] a, DifferentiableAt ℝ f x)
    (hg' : ∀ᶠ x in 𝓝[>] a, deriv g x ≠ 0) (hfa : Tendsto f (𝓝[>] a) (𝓝 0))
    (hga : Tendsto g (𝓝[>] a) (𝓝 0))
    (hdiv : Tendsto (fun x => (deriv f) x / (deriv g) x) (𝓝[>] a) l) :
    Tendsto (fun x => f x / g x) (𝓝[>] a) l := by
  have hdg : ∀ᶠ x in 𝓝[>] a, DifferentiableAt ℝ g x :=
    hg'.mono fun _ hg' => by_contradiction fun h => hg' (deriv_zero_of_not_differentiableAt h)
  have hdf' : ∀ᶠ x in 𝓝[>] a, HasDerivAt f (deriv f x) x :=
    hdf.mono fun _ => DifferentiableAt.hasDerivAt
  have hdg' : ∀ᶠ x in 𝓝[>] a, HasDerivAt g (deriv g x) x :=
    hdg.mono fun _ => DifferentiableAt.hasDerivAt
  exact HasDerivAt.lhopital_zero_nhdsGT hdf' hdg' hg' hfa hga hdiv

@[deprecated (since := "2025-03-02")]
alias lhopital_zero_nhds_right := lhopital_zero_nhdsGT

/-- **L'Hôpital's rule** for approaching a real from the left, `deriv` version -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variantbcd26a00cda19edcd295abd863fb98f20772ef52f04dd64ef77d328e2911e60f.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed5037cd0c85e279b7e8da3ec04e11b7258aaa77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
