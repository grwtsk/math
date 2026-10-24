# preΨ'_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efa9cb32-e952-6bdd-3aeb-25a9a0b2d4ed",
  "kind": "lemma",
  "lexical_name": "preΨ'_odd",
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
  "slug": "pre-odd--d4dd2fca35362467f5c0c49e",
  "source": {
    "blob": "deaf84f035f9a609334ae5561fcb0c233e5ef4be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 185,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4dd2fca35362467f5c0c49e2b1bf88ebc0499cdb7e08dfe278206912a5f1569",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efa9cb32-e952-6bdd-3aeb-25a9a0b2d4ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preΨ'_odd (m : ℕ) : W.preΨ' (2 * (m + 2) + 1) =
    W.preΨ' (m + 4) * W.preΨ' (m + 2) ^ 3 * (if Even m then W.Ψ₂Sq ^ 2 else 1) -
      W.preΨ' (m + 1) * W.preΨ' (m + 3) ^ 3 * (if Even m then 1 else W.Ψ₂Sq ^ 2) :=
  preNormEDS'_odd ..

end preΨ'

section preΨ

/-! ### The univariate polynomials `preΨₙ` for `n ∈ ℤ` -/

/-- The univariate polynomials `preΨₙ` for `n ∈ ℤ`, which are auxiliary to the bivariate polynomials
`Ψₙ` congruent to the bivariate `n`-division polynomials `ψₙ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `deaf84f035f9a609334ae5561fcb0c233e5ef4be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
