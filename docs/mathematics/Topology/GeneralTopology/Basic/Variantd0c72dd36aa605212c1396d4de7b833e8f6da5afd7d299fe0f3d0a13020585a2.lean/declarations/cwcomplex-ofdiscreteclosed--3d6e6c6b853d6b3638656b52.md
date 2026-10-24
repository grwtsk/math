# CWComplex.OfDiscreteClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8874506a9fd9e947bcc4592972b3b949c4315acfaf969012cddd4834b0731c67",
  "kind": "def",
  "lexical_name": "CWComplex.OfDiscreteClosed",
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
  "slug": "cwcomplex-ofdiscreteclosed--3d6e6c6b853d6b3638656b52",
  "source": {
    "blob": "b8480283b94195d8efa20abab52263d7ad3af899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1115,
    "line": 1081,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d6e6c6b853d6b3638656b5265b033188b9c9a8be1355f56507aa96a764d6242",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8874506a9fd9e947bcc4592972b3b949c4315acfaf969012cddd4834b0731c67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1081–1115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CWComplex.OfDiscreteClosed (hD : IsDiscrete D) (Dc : IsClosed D) : CWComplex D where
  cell n := match n with
    | 0 => D
    | (_ + 1) => PEmpty
  map n i := match n with
    | 0 => PartialEquiv.single ![] i
    | (_ + 1) => i.elim
  source_eq n i := match n with
    | 0 => by simp [ball, Matrix.empty_eq, eq_univ_iff_forall]
    | (_ + 1) => i.elim
  continuousOn n i := match n with
    | 0 => continuousOn_const
    | (_ + 1) => i.elim
  continuousOn_symm n i := match n with
    | 0 => continuousOn_const
    | (_ + 1) => i.elim
  pairwiseDisjoint' := by
    simp_rw [PairwiseDisjoint, Set.Pairwise, Function.onFun]
    rintro ⟨_|n, j⟩ _ ⟨_|m, i⟩ _ ne
    · simp_all [Subtype.coe_injective.ne]
    · exact i.elim
    · tauto
    · exact i.elim
  mapsTo' n i := match n with
    | 0 => by simp [Matrix.zero_empty, sphere_eq_empty_of_subsingleton]
    | (_ + 1) => i.elim
  closed' A AD _ := isClosed_of_subset_discrete_closed AD hD Dc
  union' := by
    apply subset_antisymm (iUnion₂_subset_iff.mpr fun n ↦ by cases n <;> simp)
    intro x xD
    simp only [mem_iUnion, mem_image, mem_closedBall, dist_zero_right]
    refine ⟨0, ?_⟩
    simpa [-Matrix.zero_empty]

/-- A discrete space is a CW complex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd0c72dd36aa605212c1396d4de7b833e8f6da5afd7d299fe0f3d0a13020585a2.lean#L1081).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8480283b94195d8efa20abab52263d7ad3af899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
