# sorted_type_classification

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f202cf2e-1933-c7cc-cfce-bffa7834ea3a",
  "kind": "theorem",
  "lexical_name": "sorted_type_classification",
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
  "slug": "sorted-type-classification--901dca2a983ede996217bedd",
  "source": {
    "blob": "fb94fd0dd3480169ef53bd8bba3ae8ec2131f268",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2150,
    "line": 2096,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:901dca2a983ede996217bedd4c57a3a78c2133a66d38d0406cc17a2e9d9b9616",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f202cf2e-1933-c7cc-cfce-bffa7834ea3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2096–2150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sorted_type_classification {context : List (Expr Bool)} {term type : Expr Bool}
    (typed : HasType monomorphicArrow context term type) :
    type = .sort true → BaseArrowType term := by
  induction typed with
  | ax sourceAxiom =>
      intro _
      obtain ⟨rfl, rfl⟩ := sourceAxiom
      exact .base
  | @var context declared sort declaration ihDeclaration =>
      intro equality
      have declaredEquality := rename_sort_inv declared Nat.succ true equality
      subst declared
      exact False.elim (kind_not_typable context (.sort sort) declaration)
  | @weaken context term type declared sort source declaration ihSource ihDeclaration =>
      intro equality
      have sourceEquality := rename_sort_inv type Nat.succ true equality
      have sourceType := ihSource sourceEquality
      rw [sourceType.rename_eq Nat.succ]
      exact sourceType
  | product domain codomain sourceRule ihDomain ihCodomain =>
      intro _
      obtain ⟨rfl, rfl, rfl⟩ := sourceRule
      exact .arrow (ihDomain rfl) (ihCodomain rfl)
  | abstraction body product ihBody ihProduct =>
      intro equality
      cases equality
  | @application context function argument domain codomain functionTyped argumentTyped
        ihFunction ihArgument =>
      intro equality
      obtain ⟨sort, productTyped⟩ := functionTyped.product_type_sorted
      obtain ⟨domainSort, codomainSort, outputSort, domainTyped, codomainTyped,
        sourceRule, _⟩ := productTyped.generation_pi
      cases codomain with
      | var index =>
          cases index with
          | zero =>
              change argument = .sort true at equality
              subst argument
              exact False.elim (kind_not_typable context domain argumentTyped)
          | succ index => cases equality
      | sort sort =>
          change Expr.sort sort = .sort true at equality
          cases equality
          exact False.elim (kind_not_typable (domain :: context) (.sort codomainSort)
            codomainTyped)
      | app function argument => cases equality
      | lam annotation body => cases equality
      | pi annotation body => cases equality
  | @conversion context term sourceType targetType sort source target conversion
        ihSource ihTarget =>
      intro equality
      subst targetType
      exact False.elim (kind_not_typable context (.sort sort) target)

/-- The previously isolated smallest classification obligation is independently discharged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCore/Variantb8713a43fd4552cfcc3db940da0e8d52438b8cdd63a36f74581e1e98a8064860.lean#L2096).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb94fd0dd3480169ef53bd8bba3ae8ec2131f268` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
