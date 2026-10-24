# examplePFF

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:489f3ef75b460af2e2d7fc7e13e5037d1d89d71b754bb7da1b50fa6853424e37",
  "kind": "def",
  "lexical_name": "examplePFF",
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
  "slug": "examplepff--26dd829a035f60dc735848ee",
  "source": {
    "blob": "f74c0f24349aa9f61575845f0aafce2e5509e4f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 211,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variant3fcb9a0db9055b0f0161c930e7942c34ba446711986e72e9441dc1ad8036db8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26dd829a035f60dc735848eee88efbd90b7d20fc1ab758d8e483f7fda40e74a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variant3fcb9a0db9055b0f0161c930e7942c34ba446711986e72e9441dc1ad8036db8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:489f3ef75b460af2e2d7fc7e13e5037d1d89d71b754bb7da1b50fa6853424e37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def examplePFF :
    PFFactorization exampleGroup parity2 exampleInterpreter where
  canonicalCertificate := exampleCanonicalCertificate
  canonicalSpectrum :=
    fun S => WalshFourier.projectionNumerator parity2 S
  canonicalSpectrumSound := rfl
  frequencyProfile := exampleProfile
  orderedFactorCertificate := exampleOrderedFactorCertificate
  walshEquivarianceSound :=
    ∀ (π : CoordinatePermutation 2)
      (f : WalshFourier.Function 2)
      (S : WalshFourier.Frequency 2),
      WalshFourier.projectionNumerator (permuteFunction π f) S =
        WalshFourier.projectionNumerator f
          (permuteFrequency (CoordinatePermutation.symm π) S)
  walshEquivarianceProof :=
    fun π f S => walsh_projection_permutation_equivariant π f S
  completeInvariantSound :=
    (functionCode parity2).length = 4
  completeInvariantProof := rfl

/-- The Walsh equivariance theorem, instantiated at the swap and `parity2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variant3fcb9a0db9055b0f0161c930e7942c34ba446711986e72e9441dc1ad8036db8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorizationExamples/Variant3fcb9a0db9055b0f0161c930e7942c34ba446711986e72e9441dc1ad8036db8e.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f74c0f24349aa9f61575845f0aafce2e5509e4f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
