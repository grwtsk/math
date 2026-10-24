# thetaTail_add_two_div_strictAnti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33344b7a94a578a5b27e03f9e0eccd5f6e641f53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68b5e805-0745-8450-d915-6de99fb8c7bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:769532eb-9256-fbd8-1011-88458a919685",
  "kind": "theorem",
  "lexical_name": "thetaTail_add_two_div_strictAnti",
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
  "slug": "thetatail-add-two-div-strictanti--9f5a7f628d6f7e53ff247b5c",
  "source": {
    "blob": "33344b7a94a578a5b27e03f9e0eccd5f6e641f53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 144,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f5a7f628d6f7e53ff247b5c065c460da0492bb66c14c1fdc494bd97583b9d62",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:769532eb-9256-fbd8-1011-88458a919685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaTail_add_two_div_strictAnti (r : ℕ) :
    StrictAntiOn (fun t : ℝ => thetaTail (r + 2) t / thetaTail r t) (Ici 0) := by
  intro x hx y hy hxy
  have h1 := thetaTail_succ_div_strictAnti r hx hy hxy
  have h2 := thetaTail_succ_div_strictAnti (r + 1) hx hy hxy
  have p1y : 0 < thetaTail (r + 1) y / thetaTail r y :=
    div_pos (thetaTail_positive _ hy) (thetaTail_positive _ hy)
  have p2x : 0 < thetaTail (r + 2) x / thetaTail (r + 1) x :=
    div_pos (thetaTail_positive _ hx) (thetaTail_positive _ hx)
  have ey : thetaTail (r + 2) y / thetaTail r y =
      (thetaTail (r + 2) y / thetaTail (r + 1) y) *
        (thetaTail (r + 1) y / thetaTail r y) := by
    field_simp [(thetaTail_positive (r + 1) hy).ne']
  have ex : thetaTail (r + 2) x / thetaTail r x =
      (thetaTail (r + 2) x / thetaTail (r + 1) x) *
        (thetaTail (r + 1) x / thetaTail r x) := by
    field_simp [(thetaTail_positive (r + 1) hx).ne']
  change thetaTail (r + 2) y / thetaTail r y <
    thetaTail (r + 2) x / thetaTail r x
  rw [ey, ex]
  exact (mul_lt_mul_of_pos_right h2 p1y).trans
    (mul_lt_mul_of_pos_left h1 p2x)

/-- At two strictly ordered nodes, normalized even-tail rows decrease strictly with the order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantf4c881eb8bb799b277d20bb8704250a305c8f7495b876e9f8a4cf26c002d1c43.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33344b7a94a578a5b27e03f9e0eccd5f6e641f53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
