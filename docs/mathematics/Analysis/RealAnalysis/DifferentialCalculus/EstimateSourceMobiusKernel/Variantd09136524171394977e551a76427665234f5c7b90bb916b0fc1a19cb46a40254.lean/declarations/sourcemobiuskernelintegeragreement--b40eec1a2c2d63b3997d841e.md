# SourceMobiusKernelIntegerAgreement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8b7e94a48c4dd01e6ad6c2cf5bd40963fb23c57ecab830709b1991e63cec969",
  "kind": "def",
  "lexical_name": "SourceMobiusKernelIntegerAgreement",
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
  "slug": "sourcemobiuskernelintegeragreement--b40eec1a2c2d63b3997d841e",
  "source": {
    "blob": "0d2a83e950c22a6bd39589c2a2466e6a63dab50b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantd09136524171394977e551a76427665234f5c7b90bb916b0fc1a19cb46a40254.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b40eec1a2c2d63b3997d841ea2e499d7e7df6e77bd1d7c63fa5f43e50f890d96",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantd09136524171394977e551a76427665234f5c7b90bb916b0fc1a19cb46a40254.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8b7e94a48c4dd01e6ad6c2cf5bd40963fb23c57ecab830709b1991e63cec969`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SourceMobiusKernelIntegerAgreement
    (A : ℝ) : Prop :=
  ∀ d : ℕ,
    d ∈ Finset.Ioc ⌊sourceLower A⌋₊ ⌊sourceUpper A⌋₊ →
      sourceMobiusKernel A d =
        ∑ n ∈ primePowerInventory (2 * A),
          ∑ dk ∈ n.divisorsAntidiagonal,
            if dk.1 = d
            then Real.log dk.2 * closedPrimeWeight A n
            else 0

/-- With all analytic work discharged, the full source-kernel contract is now
equivalent to one finite reindexing identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantd09136524171394977e551a76427665234f5c7b90bb916b0fc1a19cb46a40254.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantd09136524171394977e551a76427665234f5c7b90bb916b0fc1a19cb46a40254.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d2a83e950c22a6bd39589c2a2466e6a63dab50b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
