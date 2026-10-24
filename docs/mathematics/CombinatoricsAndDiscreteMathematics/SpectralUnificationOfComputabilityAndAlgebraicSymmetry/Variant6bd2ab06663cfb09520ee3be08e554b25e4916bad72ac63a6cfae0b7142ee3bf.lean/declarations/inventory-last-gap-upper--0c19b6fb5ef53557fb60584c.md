# inventory_last_gap_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:301c48ac-4e6a-43e1-79e4-5b4153e26ce1",
  "kind": "theorem",
  "lexical_name": "inventory_last_gap_upper",
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
  "slug": "inventory-last-gap-upper--0c19b6fb5ef53557fb60584c",
  "source": {
    "blob": "e31a77e0f41e9ecbb3ccce9654420547ab6b0e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c19b6fb5ef53557fb60584c3d1344cfc71429b47f9b897bfa3e3d94c20373b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:301c48ac-4e6a-43e1-79e4-5b4153e26ce1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inventory_last_gap_upper (N : ℕ) (hN : 2 ≤ N) :
    Real.log (N : ℝ) - Real.log ((N - 1 : ℕ) : ℝ) ≤
      1 / ((N - 1 : ℕ) : ℝ) := by
  have hp : 1 ≤ N - 1 := by omega
  have heq : ((N - 1 : ℕ) : ℝ) + 1 = (N : ℝ) := by
    exact_mod_cast (Nat.sub_add_cancel (by omega : 1 ≤ N))
  simpa only [heq] using (adjacent_log_gap_bounds (N - 1) hp).2

/-- The source's actual last adjacent spacing is of order `exp(-2*A)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6bd2ab06663cfb09520ee3be08e554b25e4916bad72ac63a6cfae0b7142ee3bf.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e31a77e0f41e9ecbb3ccce9654420547ab6b0e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
