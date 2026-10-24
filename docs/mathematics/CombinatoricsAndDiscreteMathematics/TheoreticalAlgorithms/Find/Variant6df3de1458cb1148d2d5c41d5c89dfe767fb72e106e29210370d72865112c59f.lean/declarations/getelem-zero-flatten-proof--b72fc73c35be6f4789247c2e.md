# getElem_zero_flatten.proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:536d7899-cd64-59be-1f14-720d8ba0ae4e",
  "kind": "theorem",
  "lexical_name": "getElem_zero_flatten.proof",
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
  "slug": "getelem-zero-flatten-proof--b72fc73c35be6f4789247c2e",
  "source": {
    "blob": "17a9629746f186d45e6401bebdda3501a3ce0741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant6df3de1458cb1148d2d5c41d5c89dfe767fb72e106e29210370d72865112c59f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b72fc73c35be6f4789247c2edb17397d62b6aea2cbc116a3d19552443a6a3c32",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant6df3de1458cb1148d2d5c41d5c89dfe767fb72e106e29210370d72865112c59f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:536d7899-cd64-59be-1f14-720d8ba0ae4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem_zero_flatten.proof {xss : Vector (Vector α m) n} (h : 0 < n * m) :
    (xss.findSome? fun xs => xs[0]?).isSome := by
  cases xss using vector₂_induction with
  | of xss h₁ h₂ =>
    have hn : 0 < n := Nat.pos_of_mul_pos_right h
    have hm : 0 < m := Nat.pos_of_mul_pos_left h
    simp only [hm, getElem?_eq_getElem, findSome?_mk, Array.findSome?_isSome_iff, Array.mem_map,
      Array.mem_attach, mk_eq, true_and, Subtype.exists, exists_prop, exists_eq_right,
      Option.isSome_some, and_true]
    exact ⟨⟨xss[0], h₂ _ (by simp)⟩, by simp⟩

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant6df3de1458cb1148d2d5c41d5c89dfe767fb72e106e29210370d72865112c59f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant6df3de1458cb1148d2d5c41d5c89dfe767fb72e106e29210370d72865112c59f.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17a9629746f186d45e6401bebdda3501a3ce0741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
