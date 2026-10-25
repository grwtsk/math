# EventuallyEq.cardinal_bInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b6e4553-6d17-ccbc-6563-64e35cb1c9f0",
  "kind": "theorem",
  "lexical_name": "EventuallyEq.cardinal_bInter",
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
  "slug": "eventuallyeq-cardinal-binter--aa7cbd0797bfe8e7a7381e72",
  "source": {
    "blob": "5f21116ef82ec94d70cce99e9442ee7f3a06f0d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa7cbd0797bfe8e7a7381e72ef2b20bf79609ba8e8bceb99a9bd0ab9282bf814",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b6e4553-6d17-ccbc-6563-64e35cb1c9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EventuallyEq.cardinal_bInter {S : Set ι} (hS : #S < c)
    {s t : ∀ i ∈ S, Set α} (h : ∀ i hi, s i hi =ᶠ[l] t i hi) :
    ⋂ i ∈ S, s i ‹_› =ᶠ[l] ⋂ i ∈ S, t i ‹_› :=
  (EventuallyLE.cardinal_bInter hS fun i hi => (h i hi).le).antisymm
    (EventuallyLE.cardinal_bInter hS fun i hi => (h i hi).symm.le)

/-- Construct a filter with cardinal `c` intersection property. This constructor deduces
`Filter.univ_sets` and `Filter.inter_sets` from the cardinal `c` intersection property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalInter/Variantc6c7d627eb49a01fd532f0ea5198cab0b4adc0ef9360a9dde7fe03127bd5781e.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f21116ef82ec94d70cce99e9442ee7f3a06f0d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
