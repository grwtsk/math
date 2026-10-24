# Dense.exists_ge'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9af6d575-9a3f-b9c8-8ec2-4a7d17fab02b",
  "kind": "theorem",
  "lexical_name": "Dense.exists_ge'",
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
  "slug": "dense-exists-ge--e83987dc796afc9e9dcd2144",
  "source": {
    "blob": "4f6fa8f6051335641899793c88fd959661b7b8d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e83987dc796afc9e9dcd214433717b85f2c050e2233204abd6b59212687915b6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9af6d575-9a3f-b9c8-8ec2-4a7d17fab02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.exists_ge' {s : Set α} (hs : Dense s) (htop : ∀ x, IsTop x → x ∈ s) (x : α) :
    ∃ y ∈ s, x ≤ y := by
  by_cases hx : IsTop x
  · exact ⟨x, htop x hx, le_rfl⟩
  · simp only [IsTop, not_forall, not_le] at hx
    rcases hs.exists_mem_open isOpen_Ioi hx with ⟨y, hys, hy : x < y⟩
    exact ⟨y, hys, hy.le⟩

/-!
### Left neighborhoods on a `ClosedIicTopology`

Limits to the left of real functions are defined in terms of neighborhoods to the left,
either open or closed, i.e., members of `𝓝[<] a` and `𝓝[≤] a`.
Here we prove that all left-neighborhoods of a point are equal,
and we prove other useful characterizations which require the stronger hypothesis `OrderTopology α`
in another file.
-/

/-!
#### Point excluded
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderClosed/Variantd3e0e53645aef5943499ad4ce2ab430698cb61ddcece18af2055224c66075ed4.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f6fa8f6051335641899793c88fd959661b7b8d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
