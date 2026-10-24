# ofNonnegIff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcbe64ce07c0cc589b563833872b8a391813aa81e16deb101c4093b155798a89",
  "kind": "def",
  "lexical_name": "ofNonnegIff",
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
  "slug": "ofnonnegiff--d2e739eb5bfc6fccba177ce6",
  "source": {
    "blob": "38da555b3bc86e0917587ac5c9ce142311b16ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 122,
    "path": "GRWTSK/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2e739eb5bfc6fccba177ce634e148556c558026258341bb15e4294a4dbf116d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bcbe64ce07c0cc589b563833872b8a391813aa81e16deb101c4093b155798a89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofNonnegIff [NonUnitalRing R] [PartialOrder R] [StarRing R]
    (h_add : ∀ {x y : R}, x ≤ y → ∀ z, z + x ≤ z + y)
    (h_nonneg_iff : ∀ x : R, 0 ≤ x ↔ x ∈ AddSubmonoid.closure (Set.range fun s : R => star s * s)) :
    StarOrderedRing R where
  le_iff := fun x y => by
    haveI : CovariantClass R R (· + ·) (· ≤ ·) := ⟨fun _ _ _ h => h_add h _⟩
    simpa only [← sub_eq_iff_eq_add', sub_nonneg, exists_eq_right'] using h_nonneg_iff (y - x)
#align star_ordered_ring.of_nonneg_iff StarOrderedRing.ofNonnegIff

-- set note [reducible non-instances]
/-- When `R` is a non-unital ring, to construct a `StarOrderedRing` instance it suffices to
show that the nonnegative elements are precisely those elements of the form `star s * s`
for `s : R`.

This is provided for convenience because it holds in many common scenarios (e.g.,`ℝ`, `ℂ`, or
any C⋆-algebra), and obviates the hassle of `AddSubmonoid.closure_induction` when creating those
instances. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Order/Variant9ec7cc42763c435ace58069fccc458f7bcfffd307a65105725663b70c9eb1373.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38da555b3bc86e0917587ac5c9ce142311b16ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
