# evenOddStrongRec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50c0f7b7d195110af30c4d253c0101a53cd8e51ced825383e1b82e10ef2c69d8",
  "kind": "def",
  "lexical_name": "evenOddStrongRec",
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
  "slug": "evenoddstrongrec--44dd7a443b62f4cecb8c79ff",
  "source": {
    "blob": "752c142ffe4c5141db72133cfc2b0862d40084a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 55,
    "path": "GRWTSK/Algebra/EvenOddRec/Variantce4ddda011a107091cd5df58c9754763dc921e4abfde4d7ca4516c51c0575b51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:44dd7a443b62f4cecb8c79ff65880d60621cf325cdb0a8906d7f0b735d3c93fc",
  "verification": {
    "reference": "docs/verification/Algebra/EvenOddRec/Variantce4ddda011a107091cd5df58c9754763dc921e4abfde4d7ca4516c51c0575b51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50c0f7b7d195110af30c4d253c0101a53cd8e51ced825383e1b82e10ef2c69d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def evenOddStrongRec {P : ℕ → Sort*}
    (h_even : ∀ n : ℕ, (∀ k < 2 * n, P k) → P (2 * n))
    (h_odd : ∀ n : ℕ, (∀ k < 2 * n + 1, P k) → P (2 * n + 1)) (n : ℕ) : P n :=
  n.strongRecOn fun m ih => m.even_or_odd'.choose_spec.by_cases
    (fun h => h.symm ▸ h_even m.even_or_odd'.choose <| h ▸ ih)
    (fun h => h.symm ▸ h_odd m.even_or_odd'.choose <| h ▸ ih)

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/EvenOddRec/Variantce4ddda011a107091cd5df58c9754763dc921e4abfde4d7ca4516c51c0575b51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/EvenOddRec/Variantce4ddda011a107091cd5df58c9754763dc921e4abfde4d7ca4516c51c0575b51.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `752c142ffe4c5141db72133cfc2b0862d40084a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
