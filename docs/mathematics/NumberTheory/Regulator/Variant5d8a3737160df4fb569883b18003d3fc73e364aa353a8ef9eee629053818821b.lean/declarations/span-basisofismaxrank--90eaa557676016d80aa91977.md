# span_basisOfIsMaxRank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7e927d5-44aa-951f-9791-847fbbd5f466",
  "kind": "theorem",
  "lexical_name": "span_basisOfIsMaxRank",
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
  "slug": "span-basisofismaxrank--90eaa557676016d80aa91977",
  "source": {
    "blob": "5ca7ffbfcb2be9d536be70ae6d7000e23fd0b097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 97,
    "path": "GRWTSK/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90eaa557676016d80aa919778b9290538a01234fc07cceb3d59b0523e68c332b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7e927d5-44aa-951f-9791-847fbbd5f466`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_basisOfIsMaxRank {u : Fin (rank K) → (𝓞 K)ˣ} (hu : IsMaxRank u) :
    (span ℤ (Set.range (basisOfIsMaxRank hu))).toAddSubgroup =
      AddSubgroup.map (logEmbedding K) (Subgroup.closure (Set.range u)).toAddSubgroup := by
  rw [Subgroup.toAddSubgroup_closure, AddMonoidHom.map_closure, ← span_int_eq_addSubgroupClosure]
  congr; ext; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Variant5d8a3737160df4fb569883b18003d3fc73e364aa353a8ef9eee629053818821b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca7ffbfcb2be9d536be70ae6d7000e23fd0b097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
