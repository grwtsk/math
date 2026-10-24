# derivative_ne_zero_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b636f0b-2644-8fbe-3958-388de86109d2",
  "kind": "theorem",
  "lexical_name": "derivative_ne_zero_of_injective",
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
  "slug": "derivative-ne-zero-of-injective--5cfcba1cd1110798884fbc3d",
  "source": {
    "blob": "0c62670a0e266d294965786ca7d2de323574d336",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cfcba1cd1110798884fbc3d05ed82b7e3b0ba64bb49ccfdf3b8b73c0ccf84c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b636f0b-2644-8fbe-3958-388de86109d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivative_ne_zero_of_injective {n : Nat} (H : Bits n → Bits n)
    (hinjective : Function.Injective H) {δ : Bits n}
    (hδ : δ ≠ zeroBits n) (x : Bits n) :
    derivative H δ x ≠ zeroBits n := by
  intro hzero
  have hout : H x = H (xorBits x δ) :=
    (xorBits_eq_zero_iff _ _).mp hzero
  exact (xorBits_ne_self_of_ne_zero x δ hδ) (hinjective hout).symm

/-- For an injective transformation, the zero-output differential fiber is empty. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/DoubleCounting/FiniteBooleanDerivativeAndFieldData/Variant3aabaea1e6b94d5b/DifferentialCountsAndParity.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c62670a0e266d294965786ca7d2de323574d336` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
