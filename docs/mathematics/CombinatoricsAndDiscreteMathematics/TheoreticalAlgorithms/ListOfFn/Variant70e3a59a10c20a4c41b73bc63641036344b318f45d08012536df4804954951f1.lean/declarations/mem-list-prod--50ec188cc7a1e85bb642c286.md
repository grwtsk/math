# mem_list_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cc5d98c-8a71-6f40-65af-d78f30e42f52",
  "kind": "theorem",
  "lexical_name": "mem_list_prod",
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
  "slug": "mem-list-prod--50ec188cc7a1e85bb642c286",
  "source": {
    "blob": "5bde742b09b594f735acf9a6cbf1ab96a111395b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ListOfFn/Variant70e3a59a10c20a4c41b73bc63641036344b318f45d08012536df4804954951f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50ec188cc7a1e85bb642c286a36fa5efa8a8b1e9e85a407bd9892c8c9a0001f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ListOfFn/Variant70e3a59a10c20a4c41b73bc63641036344b318f45d08012536df4804954951f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cc5d98c-8a71-6f40-65af-d78f30e42f52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_list_prod {l : List (Set α)} {a : α} :
    a ∈ l.prod ↔
      ∃ l' : List (Σs : Set α, ↥s),
        List.prod (l'.map fun x ↦ (Sigma.snd x : α)) = a ∧ l'.map Sigma.fst = l := by
  induction' l using List.ofFnRec with n f
  simp only [mem_prod_list_ofFn, List.exists_iff_exists_tuple, List.map_ofFn, Function.comp,
    List.ofFn_inj', Sigma.mk.inj_iff, and_left_comm, exists_and_left, exists_eq_left, heq_eq_eq]
  constructor
  · rintro ⟨fi, rfl⟩
    exact ⟨fun i ↦ ⟨_, fi i⟩, rfl, rfl⟩
  · rintro ⟨fi, rfl, rfl⟩
    exact ⟨fun i ↦ _, rfl⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ListOfFn/Variant70e3a59a10c20a4c41b73bc63641036344b318f45d08012536df4804954951f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ListOfFn/Variant70e3a59a10c20a4c41b73bc63641036344b318f45d08012536df4804954951f1.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bde742b09b594f735acf9a6cbf1ab96a111395b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
