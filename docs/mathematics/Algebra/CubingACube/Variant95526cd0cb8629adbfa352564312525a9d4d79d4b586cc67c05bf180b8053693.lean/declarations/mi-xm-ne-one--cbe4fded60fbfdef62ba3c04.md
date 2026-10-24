# mi_xm_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49a4fe3b-f3dc-c89c-a4e3-eca787dde066",
  "kind": "theorem",
  "lexical_name": "mi_xm_ne_one",
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
  "slug": "mi-xm-ne-one--cbe4fded60fbfdef62ba3c04",
  "source": {
    "blob": "e94c8362422377844d3c4c9a42d12fb477f608c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 334,
    "path": "GRWTSK/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbe4fded60fbfdef62ba3c048b060d4b9b97e88fb56ecc620568cc745af7fa81",
  "verification": {
    "reference": "docs/verification/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49a4fe3b-f3dc-c89c-a4e3-eca787dde066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mi_xm_ne_one : (cs <| mi h v).xm ≠ 1 := by
  apply ne_of_lt; rcases (nontrivial_bcubes h v).exists_ne (mi h v) with ⟨i, hi, h2i⟩
  · apply lt_of_lt_of_le _ h.b_add_w_le_one
    · exact i
    · exact 0
    rw [xm, mi_mem_bcubes.1, hi.1, _root_.add_lt_add_iff_left]
    exact mi_strict_minimal h2i.symm hi

/-- If `mi` lies on the boundary of the valley in dimension j, then this lemma expresses that all
  other cubes on the same boundary extend further from the boundary.
  More precisely, there is a j-th coordinate `x : ℝ` in the valley, but not in `mi`,
  such that every cube that shares a (particular) j-th coordinate with `mi` also contains j-th
  coordinate `x` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e94c8362422377844d3c4c9a42d12fb477f608c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
