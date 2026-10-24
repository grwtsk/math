# groupHomology_induction_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70bf0915-e6b3-5c91-1e46-d0e47605ffed",
  "kind": "theorem",
  "lexical_name": "groupHomology_induction_on",
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
  "slug": "grouphomology-induction-on--ea9faf5c7270cca025da2b5f",
  "source": {
    "blob": "791c0b8ce71663f51cdb711579fa4a151591c5e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 250,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantf35b0b6cf25f7333a8a08c4baa686547ec4731637264f0c2430050ee248a3b12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea9faf5c7270cca025da2b5f7dd3a54b8c3ae83a88ac92f8c8ec18c7f89326ac",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantf35b0b6cf25f7333a8a08c4baa686547ec4731637264f0c2430050ee248a3b12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70bf0915-e6b3-5c91-1e46-d0e47605ffed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem groupHomology_induction_on {n : ℕ}
    {C : groupHomology A n → Prop} (x : groupHomology A n)
    (h : ∀ x : cycles A n, C (π A n x)) : C x := by
  rcases (ModuleCat.epi_iff_surjective (π A n)).1 inferInstance x with ⟨y, rfl⟩
  exact h y

/-- The `n`th group homology of a `k`-linear `G`-representation `A` is isomorphic to
`Torₙ(A, k)` (taken in `Rep k G`), where `k` is a trivial `k`-linear `G`-representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantf35b0b6cf25f7333a8a08c4baa686547ec4731637264f0c2430050ee248a3b12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantf35b0b6cf25f7333a8a08c4baa686547ec4731637264f0c2430050ee248a3b12.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `791c0b8ce71663f51cdb711579fa4a151591c5e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
