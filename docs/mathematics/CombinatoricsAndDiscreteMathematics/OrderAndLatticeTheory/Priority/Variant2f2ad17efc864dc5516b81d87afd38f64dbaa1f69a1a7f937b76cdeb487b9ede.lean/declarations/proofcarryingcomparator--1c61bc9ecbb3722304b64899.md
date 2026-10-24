# ProofCarryingComparator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5943ca9d282c948b51506186efa9b7b8a1f0ee2be3b111c0e25dab3a6bf030b0",
  "kind": "structure",
  "lexical_name": "ProofCarryingComparator",
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
  "slug": "proofcarryingcomparator--1c61bc9ecbb3722304b64899",
  "source": {
    "blob": "1c15f1ea379e6f97065036c43eee3f9b4801cf20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c61bc9ecbb3722304b6489956548bc475ef19abc904766b6d37581958145f00",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5943ca9d282c948b51506186efa9b7b8a1f0ee2be3b111c0e25dab3a6bf030b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProofCarryingComparator (Key : Type u) where
  orderKind : ComparatorOrderKind
  Less : Key → Key → Prop
  compare : Key → Key → Ordering
  less_iff :
    ∀ left right, compare left right = .lt ↔ Less left right
  irreflexive : ∀ key, ¬ Less key key
  transitive :
    ∀ ⦃first second third⦄,
      Less first second → Less second third → Less first third
  totality :
    orderKind = .totalOrder →
      ∀ left right, left ≠ right → Less left right ∨ Less right left

/-- Priority is exactly the relation certified by the supplied comparator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Priority/Variant2f2ad17efc864dc5516b81d87afd38f64dbaa1f69a1a7f937b76cdeb487b9ede.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c15f1ea379e6f97065036c43eee3f9b4801cf20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
