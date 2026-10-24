# CompatibleTransport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:403393aee1f21457ab7db68a3c7958590a3cb674f4a22c3302f36b9e5738bedd",
  "kind": "structure",
  "lexical_name": "CompatibleTransport",
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
  "slug": "compatibletransport--3f4e6342bc0fe8919f48468c",
  "source": {
    "blob": "b5974c87b0112baed5686aa02f5c85756c44afc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 85,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f4e6342bc0fe8919f48468c9bf662c208f19d7306b3928aa94f75ff9dcccc33",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:403393aee1f21457ab7db68a3c7958590a3cb674f4a22c3302f36b9e5738bedd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompatibleTransport
    (A : Type u) (B : Type v)
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    (algebra : ConvolutionInvolution A)
    (diffuser : LinearDiffuser B) where
  representation : A → B →L[ℝ] B
  representation_conv :
    ∀ a b,
      representation (algebra.conv a b) =
        (representation a).comp (representation b)
  commutes_with_diffuser :
    ∀ a t,
      (diffuser.step t).comp (representation a) =
        (representation a).comp (diffuser.step t)
  transportSize : A → ℝ
  transportSize_nonnegative : ∀ a, 0 ≤ transportSize a
  paired_bound :
    ∀ a x,
      diffuser.graphNorm
        (((2 : ℝ)⁻¹) •
          (representation a + representation (algebra.star a)) x) ≤
        transportSize a * diffuser.graphNorm x

namespace CompatibleTransport

variable
    {A : Type u} {B : Type v}
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    {algebra : ConvolutionInvolution A}
    {diffuser : LinearDiffuser B}

/-- Forward convolution paired with its exact reverse involution channel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant0184d8c29b6623d0377a26cc4831ded2c06baa96e16d4795036ec897d1b1ef00.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5974c87b0112baed5686aa02f5c85756c44afc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
