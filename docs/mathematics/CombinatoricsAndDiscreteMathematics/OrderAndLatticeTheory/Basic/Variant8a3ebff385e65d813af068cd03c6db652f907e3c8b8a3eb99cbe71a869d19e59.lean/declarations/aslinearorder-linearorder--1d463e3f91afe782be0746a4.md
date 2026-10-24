# AsLinearOrder.linearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5094bb794a14977202578954b8ea85dd27f281f2f485d090be2fa41305be3b8",
  "kind": "instance",
  "lexical_name": "AsLinearOrder.linearOrder",
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
  "slug": "aslinearorder-linearorder--1d463e3f91afe782be0746a4",
  "source": {
    "blob": "ccd9346951a4770b130979a34c392ea9498b4510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1456,
    "line": 1451,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8a3ebff385e65d813af068cd03c6db652f907e3c8b8a3eb99cbe71a869d19e59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d463e3f91afe782be0746a4f8c5fc53bb1dec2449604e6122d6fbcc15a24ee4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8a3ebff385e65d813af068cd03c6db652f907e3c8b8a3eb99cbe71a869d19e59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5094bb794a14977202578954b8ea85dd27f281f2f485d090be2fa41305be3b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1451–1456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance AsLinearOrder.linearOrder {α} [PartialOrder α] [IsTotal α (· ≤ ·)] :
    LinearOrder (AsLinearOrder α) where
  __ := inferInstanceAs (PartialOrder α)
  le_total := @total_of α (· ≤ ·) _
  decidableLE := Classical.decRel _
#align as_linear_order.linear_order AsLinearOrder.linearOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8a3ebff385e65d813af068cd03c6db652f907e3c8b8a3eb99cbe71a869d19e59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant8a3ebff385e65d813af068cd03c6db652f907e3c8b8a3eb99cbe71a869d19e59.lean#L1451).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd9346951a4770b130979a34c392ea9498b4510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
