# Model.revPositionsFrom_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1eec1222-5f2c-e27e-4606-c4f9fe2c64fa",
  "kind": "theorem",
  "lexical_name": "Model.revPositionsFrom_eq_map",
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
  "slug": "model-revpositionsfrom-eq-map--76b73a9384c0b1e53ea4c118",
  "source": {
    "blob": "953350673ac653155f61c00f438b225371907faf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 335,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant29a960f9a516998a110864a150cd948d277367dc9ef432fcb83b15de796e1438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76b73a9384c0b1e53ea4c118540bee331b34e5cf235ef5a0dcf6ab5c2f7b2ab8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant29a960f9a516998a110864a150cd948d277367dc9ef432fcb83b15de796e1438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1eec1222-5f2c-e27e-4606-c4f9fe2c64fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Model.revPositionsFrom_eq_map {s : String} {p : s.Pos} :
    Model.revPositionsFrom p = (Slice.Model.revPositionsFrom p.toSlice).map
      (fun p => ⟨Pos.ofToSlice p.1, by simpa [← Pos.toSlice_inj] using p.2⟩) := by
  induction p using Pos.prev_induction with
  | prev p h ih =>
    rw [revPositionsFrom_eq_cons h, Slice.Model.revPositionsFrom_eq_cons (by simpa [Pos.toSlice_inj])]
    simp only [ne_eq, ih, List.map_cons, List.cons.injEq, Subtype.mk.injEq]
    simp [Pos.prev_toSlice]
  | startPos => simp [← startPos_toSlice]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant29a960f9a516998a110864a150cd948d277367dc9ef432fcb83b15de796e1438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Variant29a960f9a516998a110864a150cd948d277367dc9ef432fcb83b15de796e1438.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `953350673ac653155f61c00f438b225371907faf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
