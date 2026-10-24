# IsCyclic.card_mulAut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cca7580ea1cb569efd4b423d4326cb4e02e905bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 711,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f9501ac-f87f-7dfd-f31b-75dcfe03d372",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9914011-318b-1716-81b2-07f2755b6bb9",
  "kind": "theorem",
  "lexical_name": "IsCyclic.card_mulAut",
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
  "slug": "iscyclic-card-mulaut--b3bcee5d1d0552d65098c378",
  "source": {
    "blob": "cca7580ea1cb569efd4b423d4326cb4e02e905bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 725,
    "line": 711,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3bcee5d1d0552d65098c3787d195a905fb79cb92c7c90c32b2c30f73bb9ad69",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9914011-318b-1716-81b2-07f2755b6bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–725.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCyclic.card_mulAut [Group G] [Finite G] [h : IsCyclic G] :
    Nat.card (MulAut G) = Nat.totient (Nat.card G) := by
  rw [← ZMod.card_units_eq_totient, ← Nat.card_eq_fintype_card]
  exact Nat.card_congr (mulAutMulEquiv G)

end ZMod

section powMonoidHom

variable (G)

-- Note. Even though cyclic groups only require `[Group G]`, we need `[CommGroup G]` for
-- `powMonoidHom` to be defined.

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variant6ccb8360b1e75d3aece26983b700afee57e7cd4cef9872766908b991efcdb8e4.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cca7580ea1cb569efd4b423d4326cb4e02e905bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
