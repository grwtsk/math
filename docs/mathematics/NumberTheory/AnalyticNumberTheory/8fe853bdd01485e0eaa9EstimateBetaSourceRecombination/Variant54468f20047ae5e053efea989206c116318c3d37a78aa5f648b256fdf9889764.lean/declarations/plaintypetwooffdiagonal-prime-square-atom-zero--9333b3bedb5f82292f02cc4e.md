# plainTypeTwoOffDiagonal_prime_square_atom_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f51387c9-9a37-77fa-a331-7122704f2289",
  "kind": "theorem",
  "lexical_name": "plainTypeTwoOffDiagonal_prime_square_atom_zero",
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
  "slug": "plaintypetwooffdiagonal-prime-square-atom-zero--9333b3bedb5f82292f02cc4e",
  "source": {
    "blob": "278175786eca81b1d156f02c9088f4c39161f75a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9333b3bedb5f82292f02cc4e3c3108159f3aa780edd20bfd62864c5087259d9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f51387c9-9a37-77fa-a331-7122704f2289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainTypeTwoOffDiagonal_prime_square_atom_zero (A : ℝ) (hA : 1 ≤ A)
    (p : ℕ) (hp : p.Prime) :
    (∑ q ∈ (longOffDiagonalPairs A).filter (fun q ↦ q.1*q.2 = p^2),
      vonMangoldt q.1 * sourcePlainWeight A ((q.1*q.2 : ℕ) : ℝ)) = 0 := by
  rw [prime_square_offDiagonal_filter_empty A hA p hp, Finset.sum_empty]

/-- The retained mean correction leaves the actual prime-square counterterm atom intact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/8fe853bdd01485e0eaa9EstimateBetaSourceRecombination/Variant54468f20047ae5e053efea989206c116318c3d37a78aa5f648b256fdf9889764.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `278175786eca81b1d156f02c9088f4c39161f75a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
