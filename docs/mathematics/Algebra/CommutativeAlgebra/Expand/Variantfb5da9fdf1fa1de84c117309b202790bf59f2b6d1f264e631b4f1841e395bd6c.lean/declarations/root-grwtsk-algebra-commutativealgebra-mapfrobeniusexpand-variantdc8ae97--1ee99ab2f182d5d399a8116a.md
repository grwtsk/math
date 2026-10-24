# _root_.GRWTSK.Algebra.CommutativeAlgebra.MapFrobeniusExpand.Variantdc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888.FiniteField.MvPolynomial.expand_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d41c7e1-d4ef-78c2-50ed-8c090a412b6d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.MapFrobeniusExpand.Variantdc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888.FiniteField.MvPolynomial.expand_card",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-mapfrobeniusexpand-variantdc8ae97--1ee99ab2f182d5d399a8116a",
  "source": {
    "blob": "c907e0766e38e192da301a43e0ffcea59c324b86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 50,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variantfb5da9fdf1fa1de84c117309b202790bf59f2b6d1f264e631b4f1841e395bd6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ee99ab2f182d5d399a8116a080971307fcacd8b22fd71828c107531b8c8d498",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variantfb5da9fdf1fa1de84c117309b202790bf59f2b6d1f264e631b4f1841e395bd6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d41c7e1-d4ef-78c2-50ed-8c090a412b6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.MapFrobeniusExpand.Variantdc8ae972039c010d4ebf36e38bab654b11583091aa61e583338610d11faf4888.FiniteField.MvPolynomial.expand_card {K : Type*} [Field K] [Fintype K]
    (f : MvPolynomial σ K) : expand (Fintype.card K) f = f ^ Fintype.card K := by
  obtain ⟨p, hp⟩ := CharP.exists K
  rcases FiniteField.card K p with ⟨⟨n, npos⟩, ⟨hp, hn⟩⟩
  have : Fact p.Prime := ⟨hp⟩
  dsimp at hn
  rw [hn, ← map_iterateFrobenius_expand p, iterateFrobenius_eq_pow,
    FiniteField.frobenius_pow hn, RingHom.one_def, map_id]

end MvPolynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variantfb5da9fdf1fa1de84c117309b202790bf59f2b6d1f264e631b4f1841e395bd6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variantfb5da9fdf1fa1de84c117309b202790bf59f2b6d1f264e631b4f1841e395bd6c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c907e0766e38e192da301a43e0ffcea59c324b86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
