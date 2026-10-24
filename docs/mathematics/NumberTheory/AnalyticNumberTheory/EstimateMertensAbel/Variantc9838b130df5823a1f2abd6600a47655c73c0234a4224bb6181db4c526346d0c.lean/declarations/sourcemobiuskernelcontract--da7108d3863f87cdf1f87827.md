# SourceMobiusKernelContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:706e5b535400410edb3bfa757fc89fe9aebdf9c88864cd819e8a26c615033442",
  "kind": "def",
  "lexical_name": "SourceMobiusKernelContract",
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
  "slug": "sourcemobiuskernelcontract--da7108d3863f87cdf1f87827",
  "source": {
    "blob": "cbf05db66ede98567edea937b17f1915b992e096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 180,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da7108d3863f87cdf1f87827c30461493b8511f9de0d9f407141403434b30267",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:706e5b535400410edb3bfa757fc89fe9aebdf9c88864cd819e8a26c615033442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SourceMobiusKernelContract (A : ℝ) (Phi : ℝ → ℝ) : Prop :=
  (∀ d : ℕ,
    d ∈ Finset.Ioc ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊ →
      Phi d =
        ∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            if dk.1 = d
            then Real.log dk.2 * closedPrimeWeight A n
            else 0) ∧
  (∀ x ∈ Icc (sourceLower A) (sourceUpper A),
    DifferentiableAt ℝ Phi x) ∧
  IntegrableOn (deriv Phi)
    (Icc (sourceLower A) (sourceUpper A)) ∧
  Phi (sourceUpper A) = 0

/-- Once the actual real kernel contract is discharged, its Möbius sum has the
exact archived endpoint-plus-Mertens-integral form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateMertensAbel/Variantc9838b130df5823a1f2abd6600a47655c73c0234a4224bb6181db4c526346d0c.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbf05db66ede98567edea937b17f1915b992e096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
