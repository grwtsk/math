# abs_mul_sign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d509413f-b6d8-57ee-ad8c-0616d893aa84",
  "kind": "theorem",
  "lexical_name": "abs_mul_sign",
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
  "slug": "abs-mul-sign--2426d5fa3c7aeed1c02050d0",
  "source": {
    "blob": "d06a50da8ca47221bc0056fdee2e2ebc177dafeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variantaf52658c2bbb135a7f4ae768217cc3979870f8411add98a0c22116a63daa9801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2426d5fa3c7aeed1c02050d0f82aada3d0174eb2a380933e1d61a4392b4466d3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sign/Variantaf52658c2bbb135a7f4ae768217cc3979870f8411add98a0c22116a63daa9801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d509413f-b6d8-57ee-ad8c-0616d893aa84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem abs_mul_sign (x : α) : (|x| * sign x : α) = x := by
  rcases lt_trichotomy x 0 with (hx | rfl | hx)
  · rw [sign_neg hx, abs_of_neg hx, coe_neg_one, mul_neg_one, neg_neg]
  · rw [abs_zero, zero_mul]
  · rw [sign_pos hx, abs_of_pos hx, coe_one, mul_one]

/-- `SignType.sign` as a `MonoidWithZeroHom` for a nontrivial ordered semiring. Note that linearity
is required; consider ℂ with the order `z ≤ w` iff they have the same imaginary part and
`z - w ≤ 0` in the reals; then `1 + I` and `1 - I` are incomparable to zero, and thus we have:
`0 * 0 = SignType.sign (1 + I) * SignType.sign (1 - I) ≠ SignType.sign 2 = 1`.
(`Complex.orderedCommRing`) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sign/Variantaf52658c2bbb135a7f4ae768217cc3979870f8411add98a0c22116a63daa9801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variantaf52658c2bbb135a7f4ae768217cc3979870f8411add98a0c22116a63daa9801.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d06a50da8ca47221bc0056fdee2e2ebc177dafeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
