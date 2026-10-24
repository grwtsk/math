# prime_in_square_of_canonical_zeta_tent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f6bc1da-ea38-82bb-fee6-82a641a534ee",
  "kind": "theorem",
  "lexical_name": "prime_in_square_of_canonical_zeta_tent",
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
  "slug": "prime-in-square-of-canonical-zeta-tent--ad541405d4da79026feff4f5",
  "source": {
    "blob": "c3cca8fc7ed75f86f8deb71a6a23c6c0b30220b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Chebyshev/CanonicalZetaTent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad541405d4da79026feff4f5ca78f30a2c9e538f5bcb4cc2a6aaa2484376c2d4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/CanonicalZetaTent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f6bc1da-ea38-82bb-fee6-82a641a534ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_in_square_of_canonical_zeta_tent
    (n : ℕ) (hn : 2 ≤ n) (T : ℝ) (hT : 1 ≤ T)
    (hcount : ∀ t, T ≤ t → (heightCount t : ℝ) ≤ t * Real.log t)
    (evaluated : ℂ) (E : ℝ)
    (hsource : (squareTentMangoldt n : ℂ) = (squareRadius n : ℂ) -
      (∑' z : ZeroPoint, (multiplicity z : ℂ) *
        tentKernel (squareCenter n) (squareRadius n) z.1) +
          (squareTrivialCorrection n : ℂ))
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) *
      tentKernel (squareCenter n) (squareRadius n) z.1) - evaluated‖ ≤ E)
    (hmargin : 0 < squareRadius n - evaluated.re - squareTrivialBudget n -
      tentTailBudget (squareCenter n) (squareRadius n) 1 T - E -
        squareCorrectionBudget n) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  exact prime_in_square_of_signed_counted_tent n hn T hT
    (heightHead T) multiplicity (fun z : ZeroPoint => z.1)
    (fun z hz => (mem_heightHead T z).mpr hz)
    (fun z _ => (point_mem_strip z).2.le)
    ((heightCount_bound_iff T).mp hcount) evaluated E hsource heval hmargin

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalZetaTent
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/CanonicalZetaTent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/CanonicalZetaTent.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3cca8fc7ed75f86f8deb71a6a23c6c0b30220b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
