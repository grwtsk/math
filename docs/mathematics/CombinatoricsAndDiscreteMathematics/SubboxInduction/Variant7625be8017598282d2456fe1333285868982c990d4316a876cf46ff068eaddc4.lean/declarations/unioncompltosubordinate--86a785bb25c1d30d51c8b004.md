# unionComplToSubordinate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:881d1a05611f0f02eb2bdc30fe2748455e08aad2c0061c261935603316a5c041",
  "kind": "def",
  "lexical_name": "unionComplToSubordinate",
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
  "slug": "unioncompltosubordinate--86a785bb25c1d30d51c8b004",
  "source": {
    "blob": "ac9965aaeb4509d266447cd93dac052c997e84bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86a785bb25c1d30d51c8b004b899c3f4d427356c66c26b3ad30072a0bb4a99f8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:881d1a05611f0f02eb2bdc30fe2748455e08aad2c0061c261935603316a5c041`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unionComplToSubordinate (π₁ : TaggedPrepartition I) (π₂ : Prepartition I)
    (hU : π₂.iUnion = ↑I \ π₁.iUnion) (r : (ι → ℝ) → Ioi (0 : ℝ)) : TaggedPrepartition I :=
  π₁.disjUnion (π₂.toSubordinate r)
    (((π₂.iUnion_toSubordinate r).trans hU).symm ▸ disjoint_sdiff_self_right)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac9965aaeb4509d266447cd93dac052c997e84bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
