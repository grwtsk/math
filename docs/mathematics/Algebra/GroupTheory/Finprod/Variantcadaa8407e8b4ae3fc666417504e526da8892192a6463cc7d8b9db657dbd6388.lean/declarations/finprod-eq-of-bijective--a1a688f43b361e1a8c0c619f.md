# finprod_eq_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99566ff5-0aa9-fded-1a84-dee57ae90860",
  "kind": "theorem",
  "lexical_name": "finprod_eq_of_bijective",
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
  "slug": "finprod-eq-of-bijective--a1a688f43b361e1a8c0c619f",
  "source": {
    "blob": "ab869394c375b004fe241b59725ad579aaab9942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1013,
    "line": 1005,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1a688f43b361e1a8c0c619fac3e545627b6e456afb6d219c824db882030d989",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99566ff5-0aa9-fded-1a84-dee57ae90860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1005–1013.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_eq_of_bijective {f : α → M} {g : β → M} (e : α → β) (he₀ : Bijective e)
    (he₁ : ∀ x, f x = g (e x)) : ∏ᶠ i, f i = ∏ᶠ j, g j := by
  rw [← finprod_mem_univ f, ← finprod_mem_univ g]
  exact finprod_mem_eq_of_bijOn _ (bijective_iff_bijOn_univ.mp he₀) fun x _ => he₁ x
#align finprod_eq_of_bijective finprod_eq_of_bijective
#align finsum_eq_of_bijective finsum_eq_of_bijective

/-- See also `finprod_eq_of_bijective`, `Fintype.prod_bijective` and `Finset.prod_bij`. -/
@[to_additive "See also `finsum_eq_of_bijective`, `Fintype.sum_bijective` and `Finset.sum_bij`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean#L1005).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab869394c375b004fe241b59725ad579aaab9942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
