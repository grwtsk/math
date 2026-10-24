# card_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:476d7109-3e82-2888-7d9d-6e5aa41433e5",
  "kind": "theorem",
  "lexical_name": "card_product",
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
  "slug": "card-product--07b2523722f08b05fedccacb",
  "source": {
    "blob": "31965185018e2662a65a7943506515fed251af8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 301,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07b2523722f08b05fedccacb2df37cb6795a5d1c495759e4a80d0e64719d597a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:476d7109-3e82-2888-7d9d-6e5aa41433e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_product : card (s ×ˢ t) = card s * card t := by simp [SProd.sprod, product]
#align multiset.card_product Multiset.card_product

end Product

/-! ### Disjoint sum of multisets -/


section Sigma

variable {σ : α → Type*} (a : α) (s : Multiset α) (t : ∀ a, Multiset (σ a))

/-- `Multiset.sigma s t` is the dependent version of `Multiset.product`. It is the sum of
  `(a, b)` as `a` ranges over `s` and `b` ranges over `t a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bind/Variante55532ed497aac49e457e7557d6bd96840e5fbcf359fea731b7d9640ea80c745.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31965185018e2662a65a7943506515fed251af8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
