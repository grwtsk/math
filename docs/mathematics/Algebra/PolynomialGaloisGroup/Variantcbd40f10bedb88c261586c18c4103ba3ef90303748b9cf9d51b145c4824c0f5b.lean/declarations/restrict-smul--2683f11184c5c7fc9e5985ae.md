# restrict_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1551b193-0488-18db-0784-a3f12f5c2f8b",
  "kind": "theorem",
  "lexical_name": "restrict_smul",
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
  "slug": "restrict-smul--2683f11184c5c7fc9e5985ae",
  "source": {
    "blob": "f1d2db0af996bbe778cfb849e716d28a3efcc890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 197,
    "path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2683f11184c5c7fc9e5985ae39fb90a071b72ef9c1ba67c455e2a89dfda4bc51",
  "verification": {
    "reference": "docs/verification/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1551b193-0488-18db-0784-a3f12f5c2f8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrict_smul [Fact (p.Splits (algebraMap F E))] (ϕ : E ≃ₐ[F] E) (x : rootSet p E) :
    ↑(restrict p E ϕ • x) = ϕ x := by
  let ψ := AlgEquiv.ofInjectiveField (IsScalarTower.toAlgHom F p.SplittingField E)
  change ↑(ψ (ψ.symm _)) = ϕ x
  rw [AlgEquiv.apply_symm_apply ψ]
  change ϕ (rootsEquivRoots p E ((rootsEquivRoots p E).symm x)) = ϕ x
  rw [Equiv.apply_symm_apply (rootsEquivRoots p E)]

variable (p E)

/-- `Polynomial.Gal.galAction` as a permutation representation -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolynomialGaloisGroup/Variantcbd40f10bedb88c261586c18c4103ba3ef90303748b9cf9d51b145c4824c0f5b.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d2db0af996bbe778cfb849e716d28a3efcc890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
