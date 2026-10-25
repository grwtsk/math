# mk_near_of_forall_near

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0aa13afe-d461-2685-15ba-529811defb18",
  "kind": "theorem",
  "lexical_name": "mk_near_of_forall_near",
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
  "slug": "mk-near-of-forall-near--cedfe6fbf5d040b1b4965c90",
  "source": {
    "blob": "e00fe6a8aad09e666f0eb8b6df38fbafbf09f0f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 650,
    "line": 641,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cedfe6fbf5d040b1b4965c9035634a3500b7099122850dbbf84079cada9e3d1f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0aa13afe-d461-2685-15ba-529811defb18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_near_of_forall_near {f : CauSeq ℚ abs} {x : ℝ} {ε : ℝ}
    (H : ∃ i, ∀ j ≥ i, |(f j : ℝ) - x| ≤ ε) : |mk f - x| ≤ ε :=
  abs_sub_le_iff.2
    ⟨sub_le_iff_le_add'.2 <|
        mk_le_of_forall_le <|
          H.imp fun _ h j ij => sub_le_iff_le_add'.1 (abs_sub_le_iff.1 <| h j ij).1,
      sub_le_comm.1 <|
        le_mk_of_forall_le <| H.imp fun _ h j ij => sub_le_comm.1 (abs_sub_le_iff.1 <| h j ij).2⟩
#align real.mk_near_of_forall_near Real.mk_near_of_forall_near

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant33cc0d6a713ddeb6ef768f42a552a268d7bb31a0cbf8b781d4e2b3d3f30b90ad.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00fe6a8aad09e666f0eb8b6df38fbafbf09f0f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
