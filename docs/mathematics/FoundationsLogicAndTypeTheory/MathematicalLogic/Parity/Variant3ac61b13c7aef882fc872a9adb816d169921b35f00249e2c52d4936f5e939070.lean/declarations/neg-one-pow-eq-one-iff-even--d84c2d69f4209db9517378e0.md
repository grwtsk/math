# neg_one_pow_eq_one_iff_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37497766-587e-d2ac-e5cd-b31fc738071d",
  "kind": "theorem",
  "lexical_name": "neg_one_pow_eq_one_iff_even",
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
  "slug": "neg-one-pow-eq-one-iff-even--d84c2d69f4209db9517378e0",
  "source": {
    "blob": "cdaa4f9e0b15ced7126d02bd1f99e5f33ebb6885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 344,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant3ac61b13c7aef882fc872a9adb816d169921b35f00249e2c52d4936f5e939070.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d84c2d69f4209db9517378e057837138660c4d417f5223447679bdf3111a6520",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant3ac61b13c7aef882fc872a9adb816d169921b35f00249e2c52d4936f5e939070.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37497766-587e-d2ac-e5cd-b31fc738071d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_one_pow_eq_one_iff_even (h : (-1 : R) ≠ 1) : (-1 : R) ^ n = 1 ↔ Even n :=
  ⟨fun h' => of_not_not fun hn => h <| (Odd.neg_one_pow <| odd_iff_not_even.mpr hn).symm.trans h',
    Even.neg_one_pow⟩
#align neg_one_pow_eq_one_iff_even neg_one_pow_eq_one_iff_even

/-- If `a` is even, then `n` is odd iff `n % a` is odd. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant3ac61b13c7aef882fc872a9adb816d169921b35f00249e2c52d4936f5e939070.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Parity/Variant3ac61b13c7aef882fc872a9adb816d169921b35f00249e2c52d4936f5e939070.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdaa4f9e0b15ced7126d02bd1f99e5f33ebb6885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
