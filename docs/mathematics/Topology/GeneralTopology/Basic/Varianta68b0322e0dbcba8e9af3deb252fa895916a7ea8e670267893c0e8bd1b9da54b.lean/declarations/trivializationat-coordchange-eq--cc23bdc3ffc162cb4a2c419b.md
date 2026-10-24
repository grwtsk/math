# trivializationAt_coordChange_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98e04dcf-4582-de7a-76f6-45ffc0c164a0",
  "kind": "theorem",
  "lexical_name": "trivializationAt_coordChange_eq",
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
  "slug": "trivializationat-coordchange-eq--cc23bdc3ffc162cb4a2c419b",
  "source": {
    "blob": "8c75d6dc02058c3177003eb1fd5c89c0ccd2eb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 833,
    "line": 802,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc23bdc3ffc162cb4a2c419b263c98a1fddfc3dc6f8e7c622620c3fe94316261",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98e04dcf-4582-de7a-76f6-45ffc0c164a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 802–833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivializationAt_coordChange_eq {b₀ b₁ b : B}
    (hb : b ∈ (trivializationAt F Z.Fiber b₀).baseSet ∩ (trivializationAt F Z.Fiber b₁).baseSet)
    (v : F) :
    (trivializationAt F Z.Fiber b₀).coordChangeL R (trivializationAt F Z.Fiber b₁) b v =
      Z.coordChange (Z.indexAt b₀) (Z.indexAt b₁) b v :=
  Z.localTriv_coordChange_eq _ _ hb v

end VectorBundleCore

end

/-! ### Vector prebundle -/

section

variable [NontriviallyNormedField R] [∀ x, AddCommMonoid (E x)] [∀ x, Module R (E x)]
  [NormedAddCommGroup F] [NormedSpace R F] [TopologicalSpace B] [∀ x, TopologicalSpace (E x)]

open TopologicalSpace

open VectorBundle

/-- This structure permits to define a vector bundle when trivializations are given as local
equivalences but there is not yet a topology on the total space or the fibers.
The total space is hence given a topology in such a way that there is a fiber bundle structure for
which the partial equivalences are also open partial homeomorphisms and hence vector bundle
trivializations. The topology on the fibers is induced from the one on the total space.

The field `exists_coordChange` is stated as an existential statement (instead of 3 separate
fields), since it depends on propositional information (namely `e e' ∈ pretrivializationAtlas`).
This makes it inconvenient to explicitly define a `coordChange` function when constructing a
`VectorPrebundle`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta68b0322e0dbcba8e9af3deb252fa895916a7ea8e670267893c0e8bd1b9da54b.lean#L802).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c75d6dc02058c3177003eb1fd5c89c0ccd2eb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
