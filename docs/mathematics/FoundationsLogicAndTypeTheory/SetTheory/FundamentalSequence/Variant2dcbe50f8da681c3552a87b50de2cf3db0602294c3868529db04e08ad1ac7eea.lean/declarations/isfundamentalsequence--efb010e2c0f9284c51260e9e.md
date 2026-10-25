# IsFundamentalSequence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e717398d111c6cddcaafc45f6bd1e37237d7329733926cbbdc828b0b3aa9de8c",
  "kind": "def",
  "lexical_name": "IsFundamentalSequence",
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
  "slug": "isfundamentalsequence--efb010e2c0f9284c51260e9e",
  "source": {
    "blob": "fc6f0b37989fdd50f3202495010a2e0fadfc400b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efb010e2c0f9284c51260e9ecb46281561e41b26500c0cc30b308474cbb894ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e717398d111c6cddcaafc45f6bd1e37237d7329733926cbbdc828b0b3aa9de8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsFundamentalSequence (a o : Ordinal.{u}) (f : ∀ b < o, Ordinal.{u}) : Prop :=
  o ≤ a.cof.ord ∧ (∀ {i j} (hi hj), i < j → f i hi < f j hj) ∧ blsub.{u, u} o f = a

namespace IsFundamentalSequence

variable {a o : Ordinal.{u}} {f : ∀ b < o, Ordinal.{u}}

@[deprecated IsFundamentalSeq.ord_cof (since := "2026-03-23")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc6f0b37989fdd50f3202495010a2e0fadfc400b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
