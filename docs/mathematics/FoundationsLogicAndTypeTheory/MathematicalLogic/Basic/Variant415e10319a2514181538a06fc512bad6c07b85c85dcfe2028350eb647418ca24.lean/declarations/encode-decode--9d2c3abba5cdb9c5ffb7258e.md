# encode_decode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6cc6479-db96-c63b-ba30-e58c27c4973d",
  "kind": "theorem",
  "lexical_name": "encode_decode",
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
  "slug": "encode-decode--9d2c3abba5cdb9c5ffb7258e",
  "source": {
    "blob": "e841e2717e04d4338701ecc5d729060359c18aa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 627,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant415e10319a2514181538a06fc512bad6c07b85c85dcfe2028350eb647418ca24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d2c3abba5cdb9c5ffb7258e713c95c91edc9fb38b54ad87b9f9b40a092f0f58",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant415e10319a2514181538a06fc512bad6c07b85c85dcfe2028350eb647418ca24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6cc6479-db96-c63b-ba30-e58c27c4973d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encode_decode [DecidableEq α] (s : Sym (Option α) n ⊕ Sym α n.succ) :
    encode (decode s) = s := by
  obtain s | s := s
  · simp
  · unfold SymOptionSuccEquiv.encode
    split_ifs with h
    · obtain ⟨a, _, ha⟩ := Multiset.mem_map.mp h
      exact Option.some_ne_none _ ha
    · refine congr_arg Sum.inr ?_
      refine map_injective (Option.some_injective _) _ ?_
      refine Eq.trans ?_ (.trans (SymOptionSuccEquiv.decode (Sum.inr s)).attach_map_coe ?_) <;> simp

end SymOptionSuccEquiv

/-- The symmetric product over `Option` is a disjoint union over simpler symmetric products. -/
--@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant415e10319a2514181538a06fc512bad6c07b85c85dcfe2028350eb647418ca24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant415e10319a2514181538a06fc512bad6c07b85c85dcfe2028350eb647418ca24.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e841e2717e04d4338701ecc5d729060359c18aa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
