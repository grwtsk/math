# exists_idempotent_in_compact_subsemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d34b524-e4bc-52a5-e7f1-9e0276c0c20a",
  "kind": "theorem",
  "lexical_name": "exists_idempotent_in_compact_subsemigroup",
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
  "slug": "exists-idempotent-in-compact-subsemigroup--d192ada8cbda5138e5ba86de",
  "source": {
    "blob": "48aa8b19f2860661b97cad5ec2d2e43d77e9997f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/Semigroup/Variantb2c1e3c423a4701d112b8bce6246dbb09213699badd35fe9309c4efd5571ab36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d192ada8cbda5138e5ba86defea883126ddf184babb16e3e46c2d849c24819ad",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Semigroup/Variantb2c1e3c423a4701d112b8bce6246dbb09213699badd35fe9309c4efd5571ab36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d34b524-e4bc-52a5-e7f1-9e0276c0c20a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_idempotent_in_compact_subsemigroup {M} [Semigroup M] [TopologicalSpace M] [T2Space M]
    (continuous_mul_left : ∀ r : M, Continuous (· * r)) (s : Set M) (snemp : s.Nonempty)
    (s_compact : IsCompact s) (s_add : ∀ᵉ (x ∈ s) (y ∈ s), x * y ∈ s) :
    ∃ m ∈ s, m * m = m := by
  let M' := { m // m ∈ s }
  letI : Semigroup M' :=
    { mul := fun p q => ⟨p.1 * q.1, s_add _ p.2 _ q.2⟩
      mul_assoc := fun p q r => Subtype.eq (mul_assoc _ _ _) }
  haveI : CompactSpace M' := isCompact_iff_compactSpace.mp s_compact
  haveI : Nonempty M' := nonempty_subtype.mpr snemp
  have : ∀ p : M', Continuous (· * p) := fun p =>
    ((continuous_mul_left p.1).comp continuous_subtype_val).subtype_mk _
  obtain ⟨⟨m, hm⟩, idem⟩ := exists_idempotent_of_compact_t2_of_continuous_mul_left this
  exact ⟨m, hm, Subtype.ext_iff.mp idem⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Semigroup/Variantb2c1e3c423a4701d112b8bce6246dbb09213699badd35fe9309c4efd5571ab36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Semigroup/Variantb2c1e3c423a4701d112b8bce6246dbb09213699badd35fe9309c4efd5571ab36.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48aa8b19f2860661b97cad5ec2d2e43d77e9997f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
