# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff7b52ed1fb3ace0c07a3a18be0171bfdefb7253cc616c4b135f1f2bb0486732",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8da9aafd5c4b153b06b167e5",
  "source": {
    "blob": "f17ca0e9c938a04766a86111475713cbae6899f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 28,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8da9aafd5c4b153b06b167e582f107754a6917ee905dee7105da6062adb39418",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff7b52ed1fb3ace0c07a3a18be0171bfdefb7253cc616c4b135f1f2bb0486732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FloorSemiring ℚ≥0 where
  floor q := ⌊q.val⌋₊
  ceil q := ⌈q.val⌉₊
  floor_of_neg h := by simpa using h.trans zero_lt_one
  gc_floor {a n} h := by rw [← NNRat.coe_le_coe, Nat.le_floor_iff] <;> norm_cast
  gc_ceil {a b} := by rw [← NNRat.coe_le_coe, Nat.ceil_le]; norm_cast

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Floor/Variantf1b53e445b5137749f5c5679ab32f33df6504e9beaef6c15a8e27666f2961d08.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17ca0e9c938a04766a86111475713cbae6899f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
