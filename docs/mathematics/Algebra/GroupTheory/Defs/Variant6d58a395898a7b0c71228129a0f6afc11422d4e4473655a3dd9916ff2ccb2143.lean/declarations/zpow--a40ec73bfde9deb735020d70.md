# zpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b737b4d50541c1fea525ccd2c82c9d94621c249",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 620,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a67ef2ec-501a-13b0-e4b8-8cda95244067",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90e0f4b0-333d-de53-a49b-5fd242d9248a",
  "kind": "theorem",
  "lexical_name": "zpow",
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
  "slug": "zpow--a40ec73bfde9deb735020d70",
  "source": {
    "blob": "5b737b4d50541c1fea525ccd2c82c9d94621c249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 620,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a40ec73bfde9deb735020d7093dd6eba9960ea9ae786512de805ae8b9a6558dc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90e0f4b0-333d-de53-a49b-5fd242d9248a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem zpow : ∀ (n : ℤ) {w x}, c w x → c (w ^ n) (x ^ n)
  | Int.ofNat n, w, x, h => by simpa only [zpow_natCast, Int.ofNat_eq_coe] using c.pow n h
  | Int.negSucc n, w, x, h => by simpa only [zpow_negSucc] using c.inv (c.pow _ h)

/-- The inversion induced on the quotient by a congruence relation on a type with an
    inversion. -/
@[to_additive "The negation induced on the quotient by an additive congruence relation on a type
with a negation."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b737b4d50541c1fea525ccd2c82c9d94621c249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
