# DynamicThreeQuarterSoficProgram.zeroFree_strict_threeQuarters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db4dc87a-c8e7-efa9-9c3b-a12ab9bf9cc3",
  "kind": "theorem",
  "lexical_name": "DynamicThreeQuarterSoficProgram.zeroFree_strict_threeQuarters",
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
  "slug": "dynamicthreequartersoficprogram-zerofree-strict-threequarters--8c5de3c86e3a56865e83e89a",
  "source": {
    "blob": "98ce2d34115ac5326da6e79a8de75bb2dc645442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 241,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c5de3c86e3a56865e83e89a751c6aa6b032d64e10e4939137cae3d4e760eab5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db4dc87a-c8e7-efa9-9c3b-a12ab9bf9cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DynamicThreeQuarterSoficProgram.zeroFree_strict_threeQuarters
    {Obs : Type u} {State : Type v} {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (P : DynamicThreeQuarterSoficProgram
      (Obs := Obs) (State := State) (Spectral := Spectral)) :
    ∀ z : ℂ, (3 : ℝ) / 4 < z.re → ¬ ActualZetaZero z := by
  intro z hz
  have h := P.analytic.limit_zeroFree z
  rw [P.analyticRealPart z, P.analyticIsZeta] at h
  exact h hz


/-! ## Finite-context obstruction, rather than an opaque non-sofic label -/

/-- A source-bound and independently unproved nonsoficity supplier:
every actual zeta-zero trace, after EVERY finite burn-in, has arbitrarily
many pairwise continuation-distinguishable finite words.

For each finite labeled graph with N states, the reachable-end-state
argument gives at most 2^N possible right contexts. The present
predicate requires a separate arithmetic/spectral construction
violating ALL those finite bounds. It is not furnished by GRH, by
an arbitrarily varying finite graph, or by one accepted graph path. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ce2d34115ac5326da6e79a8de75bb2dc645442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
