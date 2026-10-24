# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9ef422905630780b72bd5365e4e97d52f8d1c760f9c70a945ed2fb1b656016c",
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
  "slug": "instance--d0f2a16b7021023d1f2dd11e",
  "source": {
    "blob": "1855fd9ff8ddd5c1cf65b8b7fd365aed6529ac58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 181,
    "path": "GRWTSK/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d0f2a16b7021023d1f2dd11e957f84e5113aaf5a4dacebf0886472c746ef06a3",
  "verification": {
    "reference": "docs/verification/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9ef422905630780b72bd5365e4e97d52f8d1c760f9c70a945ed2fb1b656016c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {R : Type*} [Ring R] (P : Ideal R) [MulSemiringAction M R] :
    (P.inertia (MulAction.stabilizer M P)).Normal := by
  simp_rw [Subgroup.normal_iff_map_conj_eq, ← inertia_smul]
  exact fun g ↦ congrArg (inertia _) g.2

variable {N : Type*} [Group N] [MulSemiringAction N R]

/--
Assume that `M` and `N` are isomorphic and act in a compatible way on `R`, then for any
ideal `I` of `R`, the stabilizer of `I` in `M` is isomorphic to the stabilizer of `I` in `N`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pointwise/Variant91d8b3354315f245b28259165390a769a3dac8ec4d8788443764456b139a20b5.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1855fd9ff8ddd5c1cf65b8b7fd365aed6529ac58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
