# SuccOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:796bc363bd46a30977d62dbba6a55c3f6413fb16d2ec806c2583d7c90dcddc32",
  "kind": "class",
  "lexical_name": "SuccOrder",
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
  "slug": "succorder--980458c4cfd8c144b8fc2b6a",
  "source": {
    "blob": "6e5ba067c2ed0a76204be5b800d98975bce5ce2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:980458c4cfd8c144b8fc2b6a2f34918a2e533dce5cb2fdd272159518636edfd1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:796bc363bd46a30977d62dbba6a55c3f6413fb16d2ec806c2583d7c90dcddc32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SuccOrder (α : Type*) [Preorder α] where
  /--Successor function-/
  succ : α → α
  /--Proof of basic ordering with respect to `succ`-/
  le_succ : ∀ a, a ≤ succ a
  /--Proof of interaction between `succ` and maximal element-/
  max_of_succ_le {a} : succ a ≤ a → IsMax a
  /--Proof that `succ` satisfies ordering invariants between `LT` and `LE`-/
  succ_le_of_lt {a b} : a < b → succ a ≤ b
  /--Proof that `succ` satisfies ordering invariants between `LE` and `LT`-/
  le_of_lt_succ {a b} : a < succ b → a ≤ b
#align succ_order SuccOrder
#align succ_order.ext_iff SuccOrder.ext_iff
#align succ_order.ext SuccOrder.ext

/-- Order equipped with a sensible predecessor function. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf869799ade25d9912fc7386ef6bf4cc38dde0439c4fd06d7f07b62ce35f53115.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5ba067c2ed0a76204be5b800d98975bce5ce2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
