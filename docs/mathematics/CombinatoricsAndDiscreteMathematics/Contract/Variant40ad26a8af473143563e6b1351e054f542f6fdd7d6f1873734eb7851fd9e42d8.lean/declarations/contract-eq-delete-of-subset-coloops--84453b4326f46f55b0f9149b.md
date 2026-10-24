# contract_eq_delete_of_subset_coloops

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb13de4c-f778-d054-792e-1c507772432d",
  "kind": "lemma",
  "lexical_name": "contract_eq_delete_of_subset_coloops",
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
  "slug": "contract-eq-delete-of-subset-coloops--84453b4326f46f55b0f9149b",
  "source": {
    "blob": "5cf243172922d9312efb2df3db6e4286acb35f8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 374,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant40ad26a8af473143563e6b1351e054f542f6fdd7d6f1873734eb7851fd9e42d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84453b4326f46f55b0f9149becc4458c46ac36de049e3a344ca149cd7de08a97",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Contract/Variant40ad26a8af473143563e6b1351e054f542f6fdd7d6f1873734eb7851fd9e42d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb13de4c-f778-d054-792e-1c507772432d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma contract_eq_delete_of_subset_coloops (hX : X ⊆ M.coloops) : M ／ X = M ＼ X := by
  rw [← dual_inj, dual_delete, contract_eq_delete_of_subset_loops hX, dual_contract]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Contract/Variant40ad26a8af473143563e6b1351e054f542f6fdd7d6f1873734eb7851fd9e42d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Contract/Variant40ad26a8af473143563e6b1351e054f542f6fdd7d6f1873734eb7851fd9e42d8.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cf243172922d9312efb2df3db6e4286acb35f8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
