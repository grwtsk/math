# CFC.one_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:051bdc42-56dd-d2ec-2415-1db15d226261",
  "kind": "lemma",
  "lexical_name": "CFC.one_le_iff",
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
  "slug": "cfc-one-le-iff--f6a8c61deb2e307d74f75406",
  "source": {
    "blob": "c2c8424fa2e7b1917643fc95b1d3faf4aa1af414",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1059,
    "line": 1037,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6a8c61deb2e307d74f75406a66a0aa0c1bf26f6eb6ac879edae149f4ad73b3e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:051bdc42-56dd-d2ec-2415-1db15d226261`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1037–1059.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CFC.one_le_iff (a : A) (ha : p a := by cfc_tac) :
    1 ≤ a ↔ ∀ x ∈ spectrum R a, 1 ≤ x := by
  simpa using algebraMap_le_iff_le_spectrum (r := (1 : R)) (a := a)

end Ring

end Order

/-! ### `cfcHom` on a superset of the spectrum -/

section Superset

variable {R A : Type*} {p : A → Prop} [CommSemiring R] [StarRing R]
    [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R] [Ring A] [StarRing A]
    [TopologicalSpace A] [Algebra R A] [instCFC : ContinuousFunctionalCalculus R A p]

/-- The composition of `cfcHom` with the natural embedding `C(s, R) → C(spectrum R a, R)`
whenever `spectrum R a ⊆ s`.

This is sometimes necessary in order to consider the same continuous functions applied to multiple
distinct elements, with the added constraint that `cfc` does not suffice. This can occur, for
example, if it is necessary to use uniqueness of this continuous functional calculus. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean#L1037).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2c8424fa2e7b1917643fc95b1d3faf4aa1af414` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
