# coindFunctorIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be2e779e531bdc4b26ee16f788a72f9e138e3dd787383cf7049e4bea65edbd94",
  "kind": "def",
  "lexical_name": "coindFunctorIso",
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
  "slug": "coindfunctoriso--6e351c2a02ac79ccc47dbe3a",
  "source": {
    "blob": "1c2de90464bb8006a9d235f030b1887a81928bdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 204,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantfe3b5b9c10232ef3ce4bc0506578c1c82b673d164ea26a30ba5dd8732d79d505.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e351c2a02ac79ccc47dbe3adab85c1376580a6ed819c2b702ab3adcfa0946c5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinduced/Variantfe3b5b9c10232ef3ce4bc0506578c1c82b673d164ea26a30ba5dd8732d79d505.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be2e779e531bdc4b26ee16f788a72f9e138e3dd787383cf7049e4bea65edbd94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coindFunctorIso : coindFunctor k φ ≅ coindFunctor' k φ :=
  NatIso.ofComponents (coindIso φ) fun _ => by
    simp only [coindFunctor_obj, coindFunctor'_obj]
    ext
    simp

end CoindIso
section Adjunction

/-- Given a monoid homomorphism `φ : G →* H`, an `H`-representation `B`, and a `G`-representation
`A`, there is a `k`-linear equivalence between the `G`-representation morphisms `B ⟶ A` and the
`H`-representation morphisms `B ⟶ coind φ A`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinduced/Variantfe3b5b9c10232ef3ce4bc0506578c1c82b673d164ea26a30ba5dd8732d79d505.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinduced/Variantfe3b5b9c10232ef3ce4bc0506578c1c82b673d164ea26a30ba5dd8732d79d505.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c2de90464bb8006a9d235f030b1887a81928bdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
