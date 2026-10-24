# mod_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c5fa4ee-5e71-1f9a-0f45-160c48ff2184",
  "kind": "theorem",
  "lexical_name": "mod_left",
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
  "slug": "mod-left--ce81cd66af7e5f9b4a124ba5",
  "source": {
    "blob": "f1f830ec89cc5982a95f8e9f5ab1cf994e621908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 233,
    "path": "GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce81cd66af7e5f9b4a124ba51e4670d09e7c94001b80bc78c3af100beedb27e8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c5fa4ee-5e71-1f9a-0f45-160c48ff2184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_left (a : ℤ) (b : ℕ) : J(a | b) = J(a % b | b) :=
  congr_arg List.prod <|
    List.pmap_congr _
      (by
        -- porting note: Lean does not synthesize the instance [Fact (Nat.Prime p)] automatically
        -- (it is needed for `legendreSym.mod` on line 227). Thus, we name the hypothesis
        -- `Nat.Prime p` explicitly on line 224 and prove `Fact (Nat.Prime p)` on line 225.
        rintro p hp _ h₂
        letI : Fact p.Prime := ⟨h₂⟩
        conv_rhs =>
          rw [legendreSym.mod, Int.emod_emod_of_dvd _ (Int.coe_nat_dvd.2 <| dvd_of_mem_factors hp),
            ← legendreSym.mod])
#align jacobi_sym.mod_left jacobiSym.mod_left

/-- The symbol `J(a | b)` depends only on `a` mod `b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1f830ec89cc5982a95f8e9f5ab1cf994e621908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
