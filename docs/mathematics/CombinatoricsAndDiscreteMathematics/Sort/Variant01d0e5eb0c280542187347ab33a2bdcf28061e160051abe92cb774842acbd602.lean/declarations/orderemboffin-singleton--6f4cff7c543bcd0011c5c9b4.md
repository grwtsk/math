# orderEmbOfFin_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f42f74d2392968fe7a1508c0ca714c202bbe279c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b9b6a8b-8218-02a8-fe24-237049e201c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ff6648a-4305-83e6-1387-b893027b7e65",
  "kind": "theorem",
  "lexical_name": "orderEmbOfFin_singleton",
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
  "slug": "orderemboffin-singleton--6f4cff7c543bcd0011c5c9b4",
  "source": {
    "blob": "f42f74d2392968fe7a1508c0ca714c202bbe279c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 235,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f4cff7c543bcd0011c5c9b4e5707a5f1d56bf528f82936e047f1a21dc9f1181",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ff6648a-4305-83e6-1387-b893027b7e65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderEmbOfFin_singleton (a : α) (i : Fin 1) :
    orderEmbOfFin {a} (card_singleton a) i = a := by
  rw [Subsingleton.elim i ⟨0, Nat.zero_lt_one⟩, orderEmbOfFin_zero _ Nat.zero_lt_one,
    min'_singleton]

/-- Any increasing map `f` from `Fin k` to a finset of cardinality `k` has to coincide with
the increasing bijection `orderEmbOfFin s h`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant01d0e5eb0c280542187347ab33a2bdcf28061e160051abe92cb774842acbd602.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f42f74d2392968fe7a1508c0ca714c202bbe279c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
