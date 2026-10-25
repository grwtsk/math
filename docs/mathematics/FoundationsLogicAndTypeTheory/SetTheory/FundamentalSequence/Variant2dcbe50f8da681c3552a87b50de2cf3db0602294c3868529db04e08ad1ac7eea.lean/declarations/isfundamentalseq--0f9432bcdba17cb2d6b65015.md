# IsFundamentalSeq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23864917ecb203bd7d074d9d99e8cbbe7037f186bc15af521f924d52332bc147",
  "kind": "structure",
  "lexical_name": "IsFundamentalSeq",
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
  "slug": "isfundamentalseq--0f9432bcdba17cb2d6b65015",
  "source": {
    "blob": "fc6f0b37989fdd50f3202495010a2e0fadfc400b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f9432bcdba17cb2d6b65015bfdabc358a86beec912c72b45f02ad204bef29c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23864917ecb203bd7d074d9d99e8cbbe7037f186bc15af521f924d52332bc147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsFundamentalSeq (f : Iio a → Iio o) : Prop where
  /-- This condition alongside the others is enough to conclude `o.cof.ord = a`, see
  `IsFundamentalSeq.ord_cof`. -/
  le_ord_cof : a ≤ o.cof.ord
  /-- A fundamental sequence is strictly monotonic. -/
  strictMono : StrictMono f
  /-- A fundamental sequence for `o` has cofinal range, i.e. its least strict upper bound equals the
  ordinal `o`. See `IsFundamentalSeq.iSup_add_one_eq` and `IsFundamentalSeq.iSup_eq`. -/
  isCofinal_range : IsCofinal (range f)

namespace IsFundamentalSeq
variable {f : Iio a → Iio o} {g : Iio b → Iio a}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc6f0b37989fdd50f3202495010a2e0fadfc400b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
