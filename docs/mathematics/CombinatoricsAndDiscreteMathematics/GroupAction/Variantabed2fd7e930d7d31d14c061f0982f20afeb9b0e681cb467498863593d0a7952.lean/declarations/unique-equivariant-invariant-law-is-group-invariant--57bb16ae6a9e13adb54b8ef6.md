# unique_equivariant_invariant_law_is_group_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cd5946a-d9a8-1115-2579-95d978b67021",
  "kind": "theorem",
  "lexical_name": "unique_equivariant_invariant_law_is_group_invariant",
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
  "slug": "unique-equivariant-invariant-law-is-group-invariant--57bb16ae6a9e13adb54b8ef6",
  "source": {
    "blob": "9b12c346618ded0ff83810c3e1c8d6dd0dd19379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57bb16ae6a9e13adb54b8ef616ce166423cfaafdec5064ab67e78f1b9470cb59",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cd5946a-d9a8-1115-2579-95d978b67021`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unique_equivariant_invariant_law_is_group_invariant
    {G X : Type} [Fintype G] [Fintype X]
    (lawAction : LawAction G X)
    (kernel : MarkovKernel X)
    (equivariant : KernelLawEquivariant lawAction kernel)
    (canonical : FiniteLaw X)
    (canonicalInvariant : IsInvariantLaw kernel canonical)
    (unique :
      ∀ candidate,
        IsInvariantLaw kernel candidate →
        candidate = canonical)
    (groupElement : G) :
    lawAction.act groupElement canonical = canonical := by
  apply unique
  unfold IsInvariantLaw
  rw [equivariant groupElement canonical, canonicalInvariant]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GroupAction/Variantabed2fd7e930d7d31d14c061f0982f20afeb9b0e681cb467498863593d0a7952.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b12c346618ded0ff83810c3e1c8d6dd0dd19379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
