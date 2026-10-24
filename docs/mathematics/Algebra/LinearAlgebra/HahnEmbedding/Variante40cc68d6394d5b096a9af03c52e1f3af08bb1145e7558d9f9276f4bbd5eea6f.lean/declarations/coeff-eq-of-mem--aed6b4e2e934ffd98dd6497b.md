# coeff_eq_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d70524aa-9d5a-a683-5123-d95bc26404a7",
  "kind": "theorem",
  "lexical_name": "coeff_eq_of_mem",
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
  "slug": "coeff-eq-of-mem--aed6b4e2e934ffd98dd6497b",
  "source": {
    "blob": "0aa1f062fd3966dbb97233a890606a94ea604de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 497,
    "path": "GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aed6b4e2e934ffd98dd6497ba3343de6a41cf7aefac41aa3b35df983ec208030",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d70524aa-9d5a-a683-5123-d95bc26404a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 497–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_eq_of_mem [IsOrderedAddMonoid R] [Archimedean R] (x : M) {y z : f.val.domain}
    {c : FiniteArchimedeanClass M} (hy : y.val - x ∈ ball K c) (hz : z.val - x ∈ ball K c)
    {d : FiniteArchimedeanClass M} (hd : d ≤ c) :
    (ofLex (f.val y)).coeff d = (ofLex (f.val z)).coeff d := by
  apply eq_of_sub_eq_zero
  rw [← HahnSeries.coeff_sub, ← ofLex_sub, ← LinearPMap.map_sub]
  refine coeff_eq_zero_of_mem f ?_ hd
  have : (y - z).val = (y.val - x) - (z.val - x) := by
    push_cast
    simp
  rw [this]
  exact Submodule.sub_mem _ hy hz

/-! ### Step 3: extend the embedding

We create a larger `HahnEmbedding.Partial` from an existing one by adding a new element to the
domain and assigning an appropriate output that preserves all `HahnEmbedding.Partial`'s properties.
-/

/-- Evaluate coefficients of the `HahnSeries` given an arbitrary input that's not necessarily in
`f`'s domain. The coefficient is picked from `y` that is "close enough" to `x` (their difference
is in a higher `ArchimedeanClass`). If no such `y` exists (in other words, x is "isolated"), set the
coefficient to 0.

This doesn't immediately extend `f`'s domain to the entire module in a consistent way. Such
extension isn't necessarily linear.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HahnEmbedding/Variante40cc68d6394d5b096a9af03c52e1f3af08bb1145e7558d9f9276f4bbd5eea6f.lean#L497).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa1f062fd3966dbb97233a890606a94ea604de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
