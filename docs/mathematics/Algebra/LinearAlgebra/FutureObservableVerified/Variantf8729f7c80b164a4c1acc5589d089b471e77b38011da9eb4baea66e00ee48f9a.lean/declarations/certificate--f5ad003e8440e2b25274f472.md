# Certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4464994a4feb1957c8665dd2eb2911e5e6e1dea55eceaa7ea4db596e8ed0269",
  "kind": "structure",
  "lexical_name": "Certificate",
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
  "slug": "certificate--f5ad003e8440e2b25274f472",
  "source": {
    "blob": "d85bbe9816b8bcb90b9eae79dcb86dc1a540071a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 52,
    "path": "GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5ad003e8440e2b25274f472f591dc32ca28c90b42c1f8b208d924622cea6d61",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4464994a4feb1957c8665dd2eb2911e5e6e1dea55eceaa7ea4db596e8ed0269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Certificate (step : Move → State → State) (readout : State → ℚ) where
  /-- Inspectable retained observations. -/
  retained : Basis → State → ℚ
  /-- Induced generator actions on the finite observation vector. -/
  transition : Move → Matrix Basis Basis ℚ
  /-- Expansion of the target in the retained observations. -/
  readoutCoordinates : Basis → ℚ
  /-- Exact target reconstruction for all source states. -/
  reconstruct_readout : ∀ x, readoutCoordinates ⬝ᵥ (fun j => retained j x) = readout x
  /-- Exact expansion on every retained observable and every generator. -/
  generator_transport : ∀ g j x,
    retained j (step g x) = transition g j ⬝ᵥ (fun k => retained k x)

namespace Certificate

variable {step : Move → State → State} {readout : State → ℚ}
variable (C : Certificate (Basis := Basis) step readout)

/-- The compressed observable vector; legitimate invisible distinctions remain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantf8729f7c80b164a4c1acc5589d089b471e77b38011da9eb4baea66e00ee48f9a.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d85bbe9816b8bcb90b9eae79dcb86dc1a540071a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
