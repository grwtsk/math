# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3f5a14cd8a7931c81c337158bd44c78c778261c748eb896492383d4ffb25381",
  "kind": "example",
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
  "slug": "example--e56422e99e2cf9fcf4ccb01f",
  "source": {
    "blob": "bfc041638aa53675e552b2fcb222d7eb0dbfd2aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 24,
    "path": "GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variante825bb4e5919d45d8b91e4a15a3807a0032bafa555ec6ae6780b17808276869e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e56422e99e2cf9fcf4ccb01f0f61e354211a32fb19635212b9011c9366cc2207",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FixedHankelCutoff/Variante825bb4e5919d45d8b91e4a15a3807a0032bafa555ec6ae6780b17808276869e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3f5a14cd8a7931c81c337158bd44c78c778261c748eb896492383d4ffb25381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (d r a : ℕ) :
    (fun i j : Fin (r + 1) ↦
      (fun n ↦ cutoffSequence d (n - 1)) (i.val + j.val + a + 1)) =
    (fun i j : Fin (r + 1) ↦ cutoffSequence d (i.val + j.val + a)) := by
  funext i j
  simp

#print unshifted_eq_one
#print axioms unshifted_eq_one
#print shifted_eq_one
#print axioms shifted_eq_one
#print all_ones_posSemidef
#print axioms all_ones_posSemidef
#print both_towers_posSemidef
#print axioms both_towers_posSemidef
#print next_order_last_basis_quadratic
#print axioms next_order_last_basis_quadratic
#print next_order_not_posSemidef
#print axioms next_order_not_posSemidef
#print fixed_cutoff_counterexample
#print axioms fixed_cutoff_counterexample
#print fixed_cutoff_not_sufficient
#print axioms fixed_cutoff_not_sufficient

set_option pp.funBinderTypes true in
#check fixed_cutoff_counterexample
set_option pp.funBinderTypes true in
#check next_order_last_basis_quadratic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FixedHankelCutoff/Variante825bb4e5919d45d8b91e4a15a3807a0032bafa555ec6ae6780b17808276869e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variante825bb4e5919d45d8b91e4a15a3807a0032bafa555ec6ae6780b17808276869e.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfc041638aa53675e552b2fcb222d7eb0dbfd2aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
