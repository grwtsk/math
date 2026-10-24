# _root_.CanonicallyOrderedAdd.prod_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af576cbd-0bf3-00b2-ce42-b8974577223c",
  "kind": "lemma",
  "lexical_name": "_root_.CanonicallyOrderedAdd.prod_pos",
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
  "slug": "root-canonicallyorderedadd-prod-pos--92115f6be99a50f9a083d374",
  "source": {
    "blob": "c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92115f6be99a50f9a083d37454440f87af114a3cd0021b92e75f7cd7543bba1c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af576cbd-0bf3-00b2-ce42-b8974577223c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma _root_.CanonicallyOrderedAdd.prod_pos [NoZeroDivisors R] [Nontrivial R] :
    0 < ∏ i ∈ s, f i ↔ (∀ i ∈ s, (0 : R) < f i) :=
  CanonicallyOrderedAdd.multiset_prod_pos.trans Multiset.forall_mem_map_iff

/-- If `g, h ≤ f` and `g i + h i ≤ f i`, then the product of `f` over `s` is at least the
  sum of the products of `g` and `h`. This is the version for `CanonicallyOrderedAdd`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant440f582cbd2e05fb6d2bbafdcc0c8fb45cc5b0b152204d90876f87ebbee3588f.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
