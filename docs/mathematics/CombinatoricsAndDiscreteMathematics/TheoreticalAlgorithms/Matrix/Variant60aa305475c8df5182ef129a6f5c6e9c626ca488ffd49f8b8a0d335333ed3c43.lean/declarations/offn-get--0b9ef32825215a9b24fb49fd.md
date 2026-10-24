# ofFn_get

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbfe2f2d-89b5-ac21-3600-62e8ea246958",
  "kind": "theorem",
  "lexical_name": "ofFn_get",
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
  "slug": "offn-get--0b9ef32825215a9b24fb49fd",
  "source": {
    "blob": "4a0c77078e33a0c6e76ef7e317303eaf7214c045",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b9ef32825215a9b24fb49fd1b4d04ad74248005cff8501e059666f8cf5016f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbfe2f2d-89b5-ac21-3600-62e8ea246958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem ofFn_get {r c : Nat} (f : Fin r → Fin c → Int) (i : Fin r) (j : Fin c) :
    (ofFn f).get i j i.isLt j.isLt = f i j := by
  simp only [ofFn, get]
  split_ifs with hc
  · -- c = 0 case: impossible since j : Fin c requires c > 0
    exact absurd (Nat.eq_zero_of_not_pos (by simp [hc] : ¬ 0 < c)) (Nat.ne_zero_of_lt j.isLt)
  · -- c ≠ 0 case: need to show the array lookup equals f i j
    simp only [Array.getElem_ofFn, flatToElem]
    have hc_pos := Nat.pos_of_ne_zero hc
    -- i * c + j with j < c: div gives i, mod gives j
    have h_div : (↑i * c + ↑j) / c = ↑i := by
      rw [Nat.add_comm, Nat.add_mul_div_right _ _ hc_pos]
      rw [Nat.div_eq_of_lt j.isLt, Nat.zero_add]
    have h_mod : (↑i * c + ↑j) % c = ↑j := by
      rw [Nat.add_comm, Nat.add_mul_mod_self_right]
      exact Nat.mod_eq_of_lt j.isLt
    simp only [h_div, h_mod]

/-- Matrix Transpose -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Matrix/Variant60aa305475c8df5182ef129a6f5c6e9c626ca488ffd49f8b8a0d335333ed3c43.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0c77078e33a0c6e76ef7e317303eaf7214c045` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
