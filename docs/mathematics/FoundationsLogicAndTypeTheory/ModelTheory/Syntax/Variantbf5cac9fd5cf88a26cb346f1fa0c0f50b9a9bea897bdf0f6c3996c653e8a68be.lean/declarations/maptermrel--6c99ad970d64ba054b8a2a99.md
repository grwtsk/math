# mapTermRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4eee357ccb1af75aa3b46bf49626669f121ecb16eab35d9233a88e09774b616",
  "kind": "def",
  "lexical_name": "mapTermRel",
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
  "slug": "maptermrel--6c99ad970d64ba054b8a2a99",
  "source": {
    "blob": "e13feba647d50c91a020dc959db8fa64179f8324",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 511,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c99ad970d64ba054b8a2a991aa855ea8ae0a8d313bf3a93500c5985f4600dad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4eee357ccb1af75aa3b46bf49626669f121ecb16eab35d9233a88e09774b616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapTermRel {g : ℕ → ℕ} (ft : ∀ n, L.Term (Sum α (Fin n)) → L'.Term (Sum β (Fin (g n))))
    (fr : ∀ n, L.Relations n → L'.Relations n)
    (h : ∀ n, L'.BoundedFormula β (g (n + 1)) → L'.BoundedFormula β (g n + 1)) :
    ∀ {n}, L.BoundedFormula α n → L'.BoundedFormula β (g n)
  | _n, falsum => falsum
  | _n, equal t₁ t₂ => equal (ft _ t₁) (ft _ t₂)
  | _n, rel R ts => rel (fr _ R) fun i => ft _ (ts i)
  | _n, imp φ₁ φ₂ => (φ₁.mapTermRel ft fr h).imp (φ₂.mapTermRel ft fr h)
  | n, all φ => (h n (φ.mapTermRel ft fr h)).all
#align first_order.language.bounded_formula.map_term_rel FirstOrder.Language.BoundedFormula.mapTermRel

/-- Raises all of the `Fin`-indexed variables of a formula greater than or equal to `m` by `n'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Syntax/Variantbf5cac9fd5cf88a26cb346f1fa0c0f50b9a9bea897bdf0f6c3996c653e8a68be.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e13feba647d50c91a020dc959db8fa64179f8324` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
