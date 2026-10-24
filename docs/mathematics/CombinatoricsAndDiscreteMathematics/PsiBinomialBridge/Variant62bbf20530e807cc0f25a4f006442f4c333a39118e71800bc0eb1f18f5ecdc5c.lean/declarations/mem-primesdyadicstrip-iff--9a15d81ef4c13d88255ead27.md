# mem_primesDyadicStrip_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69557f1efa3009e3eb94a24d967e4be1e0a37d93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e637c6e1-d082-4176-0dbd-a1019190d250",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6b4138e9-7920-c697-7b84-b20bfd1f4351",
  "kind": "theorem",
  "lexical_name": "mem_primesDyadicStrip_iff",
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
  "slug": "mem-primesdyadicstrip-iff--9a15d81ef4c13d88255ead27",
  "source": {
    "blob": "69557f1efa3009e3eb94a24d967e4be1e0a37d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a15d81ef4c13d88255ead278fb840cdd4cea615ad2f0c23ee3cbf45e2ec18b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b4138e9-7920-c697-7b84-b20bfd1f4351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_primesDyadicStrip_iff
    {n p : Nat} :
    p ∈ primesDyadicStrip n ↔ Nat.Prime p ∧ n < p ∧ p ≤ 2 * n := by
  unfold primesDyadicStrip
  constructor
  · intro h
    have hh := Finset.mem_filter.mp h
    exact ⟨primesUpTo_prime hh.1, hh.2, (mem_primesUpTo_iff.mp hh.1).2⟩
  · intro h
    exact Finset.mem_filter.mpr
      ⟨mem_primesUpTo_iff.mpr ⟨h.1, h.2.2⟩, h.2.1⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PsiBinomialBridge/Variant62bbf20530e807cc0f25a4f006442f4c333a39118e71800bc0eb1f18f5ecdc5c.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69557f1efa3009e3eb94a24d967e4be1e0a37d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
