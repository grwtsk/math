# IsSFiniteKernel.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf68aca01c5eaf3d2eba1c49d9b0a9267b3337cf701cd3243b977f8a31fffe42",
  "kind": "instance",
  "lexical_name": "IsSFiniteKernel.prod",
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
  "slug": "issfinitekernel-prod--0a7e81a25a47d7f4b726ce5b",
  "source": {
    "blob": "4a3796d08fabcd44df8cc04ae3c111210a6b6c88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a7e81a25a47d7f4b726ce5bc0d44203cdf3ee4110781d8f877b1175a0d2dd3f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf68aca01c5eaf3d2eba1c49d9b0a9267b3337cf701cd3243b977f8a31fffe42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsSFiniteKernel.prod (κ : Kernel α β) (η : Kernel α γ) :
    IsSFiniteKernel (κ ×ₖ η) := by rw [Kernel.prod]; infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Prod/Variant42c4946349afb2cf3db2fdc35a72ddfa51c9dd9aae3a3ce3db93220304a0ef92.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a3796d08fabcd44df8cc04ae3c111210a6b6c88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
