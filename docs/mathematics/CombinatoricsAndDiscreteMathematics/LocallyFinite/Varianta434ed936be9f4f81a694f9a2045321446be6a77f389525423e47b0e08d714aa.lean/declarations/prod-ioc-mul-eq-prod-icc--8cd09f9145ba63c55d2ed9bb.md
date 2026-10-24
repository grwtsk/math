# prod_Ioc_mul_eq_prod_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8acb747-e136-afed-1259-a90925542a40",
  "kind": "lemma",
  "lexical_name": "prod_Ioc_mul_eq_prod_Icc",
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
  "slug": "prod-ioc-mul-eq-prod-icc--8cd09f9145ba63c55d2ed9bb",
  "source": {
    "blob": "c32dacf651638ad7009e404174c458dfe1a75520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cd09f9145ba63c55d2ed9bb039b86f4e773e4572f22d26845f0834b6e128c5c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8acb747-e136-afed-1259-a90925542a40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_Ioc_mul_eq_prod_Icc (h : a ≤ b) : (∏ x ∈ Ioc a b, f x) * f a = ∏ x ∈ Icc a b, f x := by
  rw [mul_comm, mul_prod_Ioc_eq_prod_Icc h]

@[deprecated (since := "2025-05-03")] alias prod_Ioc_mul_left := prod_Ioc_mul_eq_prod_Icc
@[deprecated (since := "2025-05-03")] alias sum_Ioc_add_left := sum_Ioc_add_eq_sum_Icc

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c32dacf651638ad7009e404174c458dfe1a75520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
