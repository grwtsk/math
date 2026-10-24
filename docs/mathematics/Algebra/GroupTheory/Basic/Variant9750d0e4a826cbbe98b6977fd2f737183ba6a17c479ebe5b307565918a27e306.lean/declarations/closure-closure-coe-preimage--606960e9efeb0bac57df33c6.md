# closure_closure_coe_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b5d708b-efe5-9666-5c1b-332bef37bc98",
  "kind": "theorem",
  "lexical_name": "closure_closure_coe_preimage",
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
  "slug": "closure-closure-coe-preimage--606960e9efeb0bac57df33c6",
  "source": {
    "blob": "c7f820fabda9b5f16f3179f6636d7aae9c8d2ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1194,
    "line": 1180,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:606960e9efeb0bac57df33c60d45bcafded69020156e66bb66816b6fb5ba1b24",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b5d708b-efe5-9666-5c1b-332bef37bc98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1180–1194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_closure_coe_preimage {k : Set G} : closure (((↑) : closure k → G) ⁻¹' k) = ⊤ :=
  eq_top_iff.2 fun x =>
    Subtype.recOn x fun x hx _ => by
      refine' closure_induction' (fun g hg => _) _ (fun g₁ g₂ hg₁ hg₂ => _) (fun g hg => _) hx
      · exact subset_closure hg
      · exact one_mem _
      · exact mul_mem
      · exact inv_mem
#align subgroup.closure_closure_coe_preimage Subgroup.closure_closure_coe_preimage
#align add_subgroup.closure_closure_coe_preimage AddSubgroup.closure_closure_coe_preimage

/-- If all the elements of a set `s` commute, then `closure s` is a commutative group. -/
@[to_additive
      "If all the elements of a set `s` commute, then `closure s` is an additive
      commutative group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean#L1180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f820fabda9b5f16f3179f6636d7aae9c8d2ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
