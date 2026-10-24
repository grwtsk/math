# zetaCriticalPlacement_transports_and_splits_ordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c06d4f9c-bc86-d78f-c79d-cc5a0148a338",
  "kind": "theorem",
  "lexical_name": "zetaCriticalPlacement_transports_and_splits_ordinates",
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
  "slug": "zetacriticalplacement-transports-and-splits-ordinates--7900f63b4706e805e2cebfed",
  "source": {
    "blob": "4626f58fe293d37943a4ec1900e64f84e29598b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 101,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7900f63b4706e805e2cebfedafbf47876cfffdf0f519583c224ffe43a4ee322b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c06d4f9c-bc86-d78f-c79d-cc5a0148a338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zetaCriticalPlacement_transports_and_splits_ordinates
    {Index : Type uIndex}
    {Zero : Index → Type uGen}
    {family : ∀ i, ZeroProblem (Zero i)}
    (covers : SpectralCoverFamily zetaZeroProblem family)
    {Obs : Type uObs} {State : Type uState} {Spectral : Type uSpectral}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (process : DynamicSpectralCover ℂ Obs State Bool Spectral)
    (soficSuppliers : ZetaEventualSoficSuppliers process.labelTrace)
    (hZeta : ZetaCriticalPlacement) :
    GeneralizedHypothesis family ∧
      ∀ z, ActualZetaZero z →
        (¬ RationalReal (zetaHeight z)) ∧
        (z.re = (1 : ℝ) / 2) ∧
        (¬ AlgebraicReal (zetaHeight z)) := by
  refine ⟨
    zetaCriticalPlacement_implies_generalized_of_spectralCovers
      covers hZeta,
    ?_⟩
  exact eventual_ordinate_split_for_dynamic_spectral_cover
    process soficSuppliers hZeta


/-- The non-eventual-sofic premise can be discharged by the explicit
right-context certificate developed in the exact-language layer.  This theorem
still keeps the two arithmetic-to-eventual-sofic classifications and zeta
critical placement as independent hypotheses.  The spectral-cover family is
likewise supplied rather than constructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZetaSpectralGRHBridge.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4626f58fe293d37943a4ec1900e64f84e29598b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
