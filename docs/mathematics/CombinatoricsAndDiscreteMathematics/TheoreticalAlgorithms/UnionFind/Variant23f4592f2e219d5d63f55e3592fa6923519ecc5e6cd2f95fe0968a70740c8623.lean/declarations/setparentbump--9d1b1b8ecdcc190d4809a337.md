# setParentBump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de40e530bec190c2dda703eb10b06cd8c11dd1662babfbb0d2046ea0c9c836fc",
  "kind": "def",
  "lexical_name": "setParentBump",
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
  "slug": "setparentbump--9d1b1b8ecdcc190d4809a337",
  "source": {
    "blob": "74cb6ca8121af6cab3b2eef5dc0f71d2ff503822",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d1b1b8ecdcc190d4809a337980edcfe565e7c24534a4b2a8b20dd4e729061b6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de40e530bec190c2dda703eb10b06cd8c11dd1662babfbb0d2046ea0c9c836fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setParentBump {n} (m : UFModel n) (x y : Fin n)
    (H : m.rank x ≤ m.rank y) (hroot : (m.parent y).1 = y) : UFModel n where
  parent i := if x.1 = i then y else m.parent i
  rank i := if y.1 = i ∧ m.rank x = m.rank y then m.rank y + 1 else m.rank i
  rank_lt i := by
    simp; split <;>
      (rename_i h₁; (try simp [h₁]); split <;> rename_i h₂ <;>
        (intro h; try simp [h] at h₂ <;> simp [h₁, h₂, h]))
    · simp [← h₁]; split <;> rename_i h₃
      · rw [h₃]; apply Nat.lt_succ_self
      · exact lt_of_le_of_ne H h₃
    · have := Fin.eq_of_val_eq h₂.1; subst this
      simp [hroot] at h
    · have := m.rank_lt i h
      split <;> rename_i h₃
      · rw [h₃.1]; exact Nat.lt_succ_of_lt this
      · exact this

end UFModel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/UnionFind/Variant23f4592f2e219d5d63f55e3592fa6923519ecc5e6cd2f95fe0968a70740c8623.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74cb6ca8121af6cab3b2eef5dc0f71d2ff503822` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
