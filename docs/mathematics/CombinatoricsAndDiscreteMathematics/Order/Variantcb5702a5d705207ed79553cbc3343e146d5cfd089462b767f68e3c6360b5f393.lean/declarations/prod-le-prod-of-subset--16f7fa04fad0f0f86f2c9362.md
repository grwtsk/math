# prod_le_prod_of_subset'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be01856c-d2be-e1e2-3f37-c875ae9d2beb",
  "kind": "theorem",
  "lexical_name": "prod_le_prod_of_subset'",
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
  "slug": "prod-le-prod-of-subset--16f7fa04fad0f0f86f2c9362",
  "source": {
    "blob": "80d03ba249f53e8ba5a7d8a0c38dcf485c818cd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 412,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16f7fa04fad0f0f86f2c9362cc3a1c2846b9b77bd48df8c473ae891ab317cb47",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be01856c-d2be-e1e2-3f37-c875ae9d2beb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_le_prod_of_subset' (h : s ⊆ t) : ∏ x in s, f x ≤ ∏ x in t, f x :=
  prod_le_prod_of_subset_of_one_le' h fun _ _ _ ↦ one_le _
#align finset.prod_le_prod_of_subset' Finset.prod_le_prod_of_subset'
#align finset.sum_le_sum_of_subset Finset.sum_le_sum_of_subset

@[to_additive sum_mono_set]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantcb5702a5d705207ed79553cbc3343e146d5cfd089462b767f68e3c6360b5f393.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80d03ba249f53e8ba5a7d8a0c38dcf485c818cd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
