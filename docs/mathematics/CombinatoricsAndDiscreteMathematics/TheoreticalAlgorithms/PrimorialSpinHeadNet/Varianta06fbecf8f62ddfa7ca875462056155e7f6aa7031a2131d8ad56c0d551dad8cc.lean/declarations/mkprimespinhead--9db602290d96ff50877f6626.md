# mkPrimeSpinHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c654e544cd193da7b261f34a4324f5ae71bded401c7650b94adee8a05217bc12",
  "kind": "def",
  "lexical_name": "mkPrimeSpinHead",
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
  "slug": "mkprimespinhead--9db602290d96ff50877f6626",
  "source": {
    "blob": "298c005169189b3ac3c7bd8f6bbed56c4db52cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimorialSpinHeadNet/Varianta06fbecf8f62ddfa7ca875462056155e7f6aa7031a2131d8ad56c0d551dad8cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9db602290d96ff50877f6626c8b8984b9c9f353fb14e2042c6dcadd9596ae5eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimorialSpinHeadNet/Varianta06fbecf8f62ddfa7ca875462056155e7f6aa7031a2131d8ad56c0d551dad8cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c654e544cd193da7b261f34a4324f5ae71bded401c7650b94adee8a05217bc12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkPrimeSpinHead
    (p : Nat) (previousPrime : Option Nat) (bitDepth : Nat)
    (primeCertified : Bool) (primorialFactors : List Nat) :
    PrimeSpinHead :=
  let bound := primorialUpTo primorialFactors
  { p := p
    primeCertified := primeCertified
    previousPrime := previousPrime
    bitDepth := bitDepth
    carrierStates := bitCarrierStates bitDepth
    primorialBound := bound
    scatterHead := bound + 1
    theoremPromotionClaim := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimorialSpinHeadNet/Varianta06fbecf8f62ddfa7ca875462056155e7f6aa7031a2131d8ad56c0d551dad8cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrimorialSpinHeadNet/Varianta06fbecf8f62ddfa7ca875462056155e7f6aa7031a2131d8ad56c0d551dad8cc.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298c005169189b3ac3c7bd8f6bbed56c4db52cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
