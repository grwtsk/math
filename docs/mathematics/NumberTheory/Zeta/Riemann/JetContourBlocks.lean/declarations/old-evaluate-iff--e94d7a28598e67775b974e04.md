# old_evaluate_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24c2fcc8-5373-c475-dab6-c5a47d2647af",
  "kind": "theorem",
  "lexical_name": "old_evaluate_iff",
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
  "slug": "old-evaluate-iff--e94d7a28598e67775b974e04",
  "source": {
    "blob": "ea22d25c3257ff2fa390d0ccb8a896acb552891d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 51,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JetContourBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e94d7a28598e67775b974e0420a5d08626b59a854260080503d533f1879fbfe9",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24c2fcc8-5373-c475-dab6-c5a47d2647af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem old_evaluate_iff (n : ℕ) (v : List Coordinates) (p : List Plan)
    (y : List Coordinates) (k : ℤ) :
    JetPoleContour.evaluate n v p y = some k ↔
      Header n v p y ∧ allRange (cellTest v p y) 0 n = true ∧ sumRange (term y) 0 n = k := by
  rw [JetPoleContour.evaluate_eq_some_iff,RationalPolygonIndex.evaluate_eq_some_iff,
    JetPoleContour.check_iff,RationalPolygonIndex.check_iff_valid]
  constructor
  · rintro ⟨⟨hn,hv,hp,hy,hvc,hyc,he⟩,⟨⟨_,_,_,hc⟩,hk⟩⟩
    refine ⟨⟨hn,hv,hp,hy,hvc,hyc⟩, ?_, ?_⟩
    · apply (allRange_iff _ _ _).mpr
      intro i hi
      simpa only [Nat.zero_add,cellTest,decide_eq_true_eq] using
        And.intro (he i (Finset.mem_range.mpr hi)) (hc i (Finset.mem_range.mpr hi))
    · simpa only [sum_eq_prefix] using hk
  · rintro ⟨⟨hn,hv,hp,hy,hvc,hyc⟩,hall,hsum⟩
    have he (i : ℕ) (hi : i ∈ Finset.range n) :
        JetPoleContour.EdgeValid (pointAt v i) (pointAt v (i+1))
          (pointAt y i) (pointAt y (i+1)) (planAt p i) ∧
        RationalPolygonIndex.EdgeValid (RationalPolygonIndex.vertex y i)
          (RationalPolygonIndex.vertex y (i+1)) := by
      simpa only [Nat.zero_add,cellTest,decide_eq_true_eq] using
        (allRange_iff _ _ _).mp hall i (Finset.mem_range.mp hi)
    refine ⟨⟨hn,hv,hp,hy,hvc,hyc,fun i hi => (he i hi).1⟩,
      ⟨⟨hn,hy,?_,fun i hi => (he i hi).2⟩,?_⟩⟩
    · simpa only [pointAt,RationalPolygonIndex.vertex] using hyc
    · simpa only [sum_eq_prefix] using hsum

/-- Claims are checked individually before their sum can be returned. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JetContourBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JetContourBlocks.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea22d25c3257ff2fa390d0ccb8a896acb552891d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
