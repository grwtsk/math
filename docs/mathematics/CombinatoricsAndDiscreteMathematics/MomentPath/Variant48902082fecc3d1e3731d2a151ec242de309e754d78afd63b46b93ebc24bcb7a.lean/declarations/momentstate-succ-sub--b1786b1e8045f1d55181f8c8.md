# momentState_succ_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a69f5a8f-7fa5-8596-bff2-a844d8649d62",
  "kind": "theorem",
  "lexical_name": "momentState_succ_sub",
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
  "slug": "momentstate-succ-sub--b1786b1e8045f1d55181f8c8",
  "source": {
    "blob": "39bd0fe2ead6f3fcf5172242f35be88807a0dff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 270,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1786b1e8045f1d55181f8c89faa402824d8b750b1382673b4454d60e894a20e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a69f5a8f-7fa5-8596-bff2-a844d8649d62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem momentState_succ_sub {N : ℕ}
    (frame : ConductorThreeCoefficientPacketFrame N)
    (x : Fin (2 * N)) :
    momentState frame x.succ - momentState frame x.castSucc =
      entryState frame x.succ := by
  classical
  rw [momentState, momentState, entryState, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro a _
  by_cases ha : frame.index a = x.succ
  · have hnew : frame.index a ≤ x.succ := ha.le
    have hold : ¬frame.index a ≤ x.castSucc := by
      rw [ha]
      exact not_le_of_gt x.castSucc_lt_succ
    rw [if_pos hnew, if_neg hold, if_pos ha, sub_zero]
  · have hle : frame.index a ≤ x.succ ↔ frame.index a ≤ x.castSucc := by
      change (frame.index a).val ≤ x.val + 1 ↔
        (frame.index a).val ≤ x.val
      have hane : (frame.index a).val ≠ x.val + 1 := by
        intro hval
        apply ha
        apply Fin.ext
        exact hval
      omega
    by_cases hax : frame.index a ≤ x.castSucc
    · simp [ha, hax, hle.mpr hax]
    · simp [ha, hax, hle.not.mpr hax]

/-! ## Algebraic inhabitant (not a geometric packet construction) -/

/-- One atom per coefficient, encoded along the repository's normalized
rank-one spatial mode. This witnesses only the consistency of the algebraic
interface. It has no tube localization and cannot prove a signed packet
estimate. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MomentPath/Variant48902082fecc3d1e3731d2a151ec242de309e754d78afd63b46b93ebc24bcb7a.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39bd0fe2ead6f3fcf5172242f35be88807a0dff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
