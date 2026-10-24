# dampedDivisorCoefficient_zero_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bfb5591-0625-6080-fc36-5bb108a223db",
  "kind": "theorem",
  "lexical_name": "dampedDivisorCoefficient_zero_ne_zero_iff",
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
  "slug": "dampeddivisorcoefficient-zero-ne-zero-iff--f9ae388f5e038b92e0c85aee",
  "source": {
    "blob": "c7fb132a5d10708506d6cc15f34ae209f88cceb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 121,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9ae388f5e038b92e0c85aeeed188d2b679fc90fb5dabdd1391b25d08441e445",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bfb5591-0625-6080-fc36-5bb108a223db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedDivisorCoefficient_zero_ne_zero_iff (n : ℕ) (hn : 1 ≤ n) :
    dampedDivisorCoefficient 0 n ≠ 0 ↔ n = 1 := by
  rw [dampedDivisorCoefficient_zero n hn]
  split_ifs <;> simp_all

end
end DampedDivisorCoefficientScratch

/-! Exact prime-power values and a divisor-count-free quadratic bound off prime powers. -/
set_option autoImplicit false
namespace DampedDivisorPrimePowerScratch
open Finset
open DampedDivisorCoefficientScratch
noncomputable section

/-- A positive prime power has exactly one damped factor, independently of its exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorPrimePowerStatements/Variant4d85f9e36dabba52a45d9b7862576712ea44f17e293e1c121f447aac2f7a3afa.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7fb132a5d10708506d6cc15f34ae209f88cceb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
