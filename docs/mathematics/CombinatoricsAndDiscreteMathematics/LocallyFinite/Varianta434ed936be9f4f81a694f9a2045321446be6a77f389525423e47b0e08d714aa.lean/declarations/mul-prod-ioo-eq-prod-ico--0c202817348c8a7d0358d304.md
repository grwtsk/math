# mul_prod_Ioo_eq_prod_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29c7e2bc-ec2b-f872-6034-fca87d52846c",
  "kind": "lemma",
  "lexical_name": "mul_prod_Ioo_eq_prod_Ico",
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
  "slug": "mul-prod-ioo-eq-prod-ico--0c202817348c8a7d0358d304",
  "source": {
    "blob": "c32dacf651638ad7009e404174c458dfe1a75520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c202817348c8a7d0358d3044986f73f2fda0dfab66aab27de09a48e506fd591",
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

Occurrence: `result:29c7e2bc-ec2b-f872-6034-fca87d52846c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_prod_Ioo_eq_prod_Ico (h : a < b) : f a * ∏ x ∈ Ioo a b, f x = ∏ x ∈ Ico a b, f x := by
  rw [Ico_eq_cons_Ioo h, prod_cons]

@[deprecated (since := "2025-05-03")] alias left_mul_prod_Ioo := mul_prod_Ioo_eq_prod_Ico
@[deprecated (since := "2025-05-03")] alias left_add_sum_Ioo := add_sum_Ioo_eq_sum_Ico

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Varianta434ed936be9f4f81a694f9a2045321446be6a77f389525423e47b0e08d714aa.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c32dacf651638ad7009e404174c458dfe1a75520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
