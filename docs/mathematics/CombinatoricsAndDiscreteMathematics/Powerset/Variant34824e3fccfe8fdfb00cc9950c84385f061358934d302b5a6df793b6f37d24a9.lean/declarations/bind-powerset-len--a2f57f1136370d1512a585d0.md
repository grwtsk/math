# bind_powerset_len

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63bd4b9c-d3a2-fe79-7b0a-e074d7ec6c5b",
  "kind": "theorem",
  "lexical_name": "bind_powerset_len",
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
  "slug": "bind-powerset-len--a2f57f1136370d1512a585d0",
  "source": {
    "blob": "5ff0f8942de785862a19912944f97094477c822e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 316,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f57f1136370d1512a585d00fa2b46886ab751e9ca8738b1942cfd665be47b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63bd4b9c-d3a2-fe79-7b0a-e074d7ec6c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bind_powerset_len {α : Type*} (S : Multiset α) :
    (bind (Multiset.range (card S + 1)) fun k => S.powersetLen k) = S.powerset := by
  induction S using Quotient.inductionOn
  simp_rw [quot_mk_to_coe, powerset_coe', powersetLen_coe, ← coe_range, coe_bind, ← List.bind_map,
    coe_card]
  exact coe_eq_coe.mpr ((List.range_bind_sublistsLen_perm _).map _)
#align multiset.bind_powerset_len Multiset.bind_powerset_len

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant34824e3fccfe8fdfb00cc9950c84385f061358934d302b5a6df793b6f37d24a9.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff0f8942de785862a19912944f97094477c822e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
