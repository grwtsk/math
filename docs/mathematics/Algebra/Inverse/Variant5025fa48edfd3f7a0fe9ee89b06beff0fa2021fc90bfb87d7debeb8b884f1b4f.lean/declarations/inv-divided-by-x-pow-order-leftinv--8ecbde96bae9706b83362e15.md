# Inv_divided_by_X_pow_order_leftInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5fd9af5cb646d5f4155f68d5d6ba3e15a2b21745",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aaeab5b2-f0a2-8e1c-3701-4df09c0a6e50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe9ca544-4387-978d-2c7f-b915d5ab57ce",
  "kind": "theorem",
  "lexical_name": "Inv_divided_by_X_pow_order_leftInv",
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
  "slug": "inv-divided-by-x-pow-order-leftinv--8ecbde96bae9706b83362e15",
  "source": {
    "blob": "5fd9af5cb646d5f4155f68d5d6ba3e15a2b21745",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 222,
    "path": "GRWTSK/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ecbde96bae9706b83362e15d2a9fed2ced2190641bdc8ded8c398bd68bebe18",
  "verification": {
    "reference": "docs/verification/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe9ca544-4387-978d-2c7f-b915d5ab57ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Inv_divided_by_X_pow_order_leftInv {f : k⟦X⟧} (hf : f ≠ 0) :
    Inv_divided_by_X_pow_order hf * divXPowOrder f = 1 := by
  rw [mul_comm]
  exact mul_invOfUnit (divXPowOrder f) (firstUnitCoeff hf) rfl

open scoped Classical in
/-- `Unit_of_divided_by_X_pow_order` is the unit power series obtained by dividing a non-zero
power series by the largest power of `X` that divides it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd9af5cb646d5f4155f68d5d6ba3e15a2b21745` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
