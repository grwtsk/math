# orderOf_ne_two_of_involutive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8ea22f4-1987-de72-e240-e99cceffba8e",
  "kind": "theorem",
  "lexical_name": "orderOf_ne_two_of_involutive",
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
  "slug": "orderof-ne-two-of-involutive--fdb672ddce8b0c74255223bb",
  "source": {
    "blob": "8ffe533345b4d9214d7cafbf36f8c8a9b766f41c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdb672ddce8b0c74255223bb0014f261ae51d5f9002f0c00c62a898f70a4dfa8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8ea22f4-1987-de72-e240-e99cceffba8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_ne_two_of_involutive (hφ : FixedPointFree φ) (h2 : Function.Involutive φ) (g : G) :
    orderOf g ≠ 2 := by
  intro hg
  have key : φ g = g := by
    rw [hφ.coe_eq_inv_of_involutive h2, inv_eq_iff_mul_eq_one, ← sq, ← hg, pow_orderOf_eq_one]
  rw [hφ g key, orderOf_one] at hg
  contradiction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FixedPointFree/Variantf02a35cf8636b6e345a40169bc2b9ded42da2b9b6fd6c9b530b2cbbd969ef460.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ffe533345b4d9214d7cafbf36f8c8a9b766f41c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
