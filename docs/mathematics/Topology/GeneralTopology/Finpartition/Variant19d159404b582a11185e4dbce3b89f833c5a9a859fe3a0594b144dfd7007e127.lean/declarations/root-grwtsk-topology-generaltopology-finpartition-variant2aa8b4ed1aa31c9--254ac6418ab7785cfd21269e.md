# _root_.GRWTSK.Topology.GeneralTopology.Finpartition.Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.IsAtom.uniqueFinpartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fac62c420dff708d748f389731902349c91606c96c0106d09cfc96857b6e249d",
  "kind": "abbrev",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Finpartition.Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.IsAtom.uniqueFinpartition",
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
  "slug": "root-grwtsk-topology-generaltopology-finpartition-variant2aa8b4ed1aa31c9--254ac6418ab7785cfd21269e",
  "source": {
    "blob": "e0165432b3ebd3aa26ad149799e85ac0a400d4b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 213,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:254ac6418ab7785cfd21269e9041c3473f42cfbdd7fc7b0efcd9940bcccda346",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fac62c420dff708d748f389731902349c91606c96c0106d09cfc96857b6e249d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev _root_.GRWTSK.Topology.GeneralTopology.Finpartition.Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.IsAtom.uniqueFinpartition (ha : IsAtom a) : Unique (Finpartition a) where
  default := indiscrete ha.1
  uniq P := by
    have h : ∀ b ∈ P.parts, b = a := fun _ hb ↦
      (ha.le_iff.mp <| P.le hb).resolve_left (P.ne_bot hb)
    ext b
    refine Iff.trans ⟨h b, ?_⟩ mem_singleton.symm
    rintro rfl
    obtain ⟨c, hc⟩ := P.parts_nonempty ha.1
    simp_rw [← h c hc]
    exact hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0165432b3ebd3aa26ad149799e85ac0a400d4b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
