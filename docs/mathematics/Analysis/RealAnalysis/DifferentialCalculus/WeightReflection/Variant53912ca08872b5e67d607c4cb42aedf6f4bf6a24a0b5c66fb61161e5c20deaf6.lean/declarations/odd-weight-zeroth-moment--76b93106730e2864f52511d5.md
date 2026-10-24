# odd_weight_zeroth_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d0a97a5ce5c959ce2be9f99a35622594f2cdafd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1999aa0b-2617-4da0-b114-67294b98f51d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dd40aeb-b629-2f0b-3a46-d822a28c9768",
  "kind": "theorem",
  "lexical_name": "odd_weight_zeroth_moment",
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
  "slug": "odd-weight-zeroth-moment--76b93106730e2864f52511d5",
  "source": {
    "blob": "2d0a97a5ce5c959ce2be9f99a35622594f2cdafd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b93106730e2864f52511d59c19abc5054f511a1b7ef71b745a30be2c724a17",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dd40aeb-b629-2f0b-3a46-d822a28c9768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem odd_weight_zeroth_moment (r : DilationRealization) (A : Set.Ici (1 : ℝ)) :
    (∫ t in lowerEndpoint..2 * A, oddWeight r A t) = 0 := by
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ ↦ even_potential_hasDerivAt r A t)
    ((odd_weight_continuous r A).intervalIntegrable _ _)]
  simp only [evenPart, intervalReflection, add_sub_cancel_left, add_sub_cancel_right,
    potential_upper_endpoint_zero]
  ring

/-- The prime-two correction is exactly four times the even weight moment.
This identity accounts for the atom; it does not permit deleting it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d0a97a5ce5c959ce2be9f99a35622594f2cdafd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
