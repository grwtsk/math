# isComplement'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d7a32e035651bcca42599d7e60c087ebbf5329a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 345,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62a597e6-e424-dd63-c242-21c2f3c8286f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e508d24b-d18a-e372-b8b5-65d8aef44eee",
  "kind": "theorem",
  "lexical_name": "isComplement'",
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
  "slug": "iscomplement--f621c34c9ad0d0d593f9884b",
  "source": {
    "blob": "0d7a32e035651bcca42599d7e60c087ebbf5329a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 345,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f621c34c9ad0d0d593f9884b4a001510159a76dbfe4bd8ac0ebb4548b422d92d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e508d24b-d18a-e372-b8b5-65d8aef44eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isComplement' (hP : IsCyclic P) :
    (MonoidHom.transferSylow P (hP.normalizer_le_centralizer hp)).ker.IsComplement' P := by
  subst hp
  by_cases hn : Nat.card G = 1
  · have := (Nat.card_eq_one_iff_unique.mp hn).1
    rw [Subsingleton.elim (MonoidHom.transferSylow P (hP.normalizer_le_centralizer rfl)).ker ⊥,
      Subsingleton.elim P.1 ⊤]
    exact isComplement'_bot_top
  have := Fact.mk (Nat.minFac_prime hn)
  exact MonoidHom.ker_transferSylow_isComplement' P (hP.normalizer_le_centralizer rfl)

end IsCyclic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d7a32e035651bcca42599d7e60c087ebbf5329a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
