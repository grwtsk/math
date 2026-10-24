# valuation_ker_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:141396eb-ab1d-288b-828e-784a5a1d97cd",
  "kind": "theorem",
  "lexical_name": "valuation_ker_eq",
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
  "slug": "valuation-ker-eq--d4a9ad56b89769bafe38aadd",
  "source": {
    "blob": "cec46ad74a3a463c4af4c940068dc1bcb50a86f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 190,
    "path": "GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant88bcff4b15ae99a6a4839ca8773a11f629124f371fd34eae91d91547ed8ada11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a9ad56b89769bafe38aadda0550df68aaedbca7d4aafe89f06e9d4c29453ef",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SelmerGroup/Variant88bcff4b15ae99a6a4839ca8773a11f629124f371fd34eae91d91547ed8ada11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:141396eb-ab1d-288b-828e-784a5a1d97cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valuation_ker_eq :
    valuation.ker = K⟮(∅ : Set <| HeightOneSpectrum R),n⟯.subgroupOf (K⟮S,n⟯) := by
  ext ⟨_, hx⟩
  constructor
  · intro hx' v _
    by_cases hv : v ∈ S
    · exact congr_fun hx' ⟨v, hv⟩
    · exact hx v hv
  · exact fun hx' => funext fun v => hx' v <| Set.notMem_empty v

/-- The natural homomorphism from `Rˣ` to `K⟮∅, n⟯`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SelmerGroup/Variant88bcff4b15ae99a6a4839ca8773a11f629124f371fd34eae91d91547ed8ada11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SelmerGroup/Variant88bcff4b15ae99a6a4839ca8773a11f629124f371fd34eae91d91547ed8ada11.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cec46ad74a3a463c4af4c940068dc1bcb50a86f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
