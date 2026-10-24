# trivialPrincipalPart_analyticAt_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4e271a2-89fa-a00e-b503-ae39427959eb",
  "kind": "theorem",
  "lexical_name": "trivialPrincipalPart_analyticAt_of_not_mem",
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
  "slug": "trivialprincipalpart-analyticat-of-not-mem--edd05645d9e2c2d893bde812",
  "source": {
    "blob": "dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edd05645d9e2c2d893bde8120070c8112dd3783b5c339372f39417e86eea74bf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4e271a2-89fa-a00e-b503-ae39427959eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivialPrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ (trivialPrincipalPart N) s := by
  classical
  unfold trivialPrincipalPart
  refine Finset.analyticAt_fun_sum _ (fun k hk => ?_)
  have hne : s ≠ trivialPoint k := by
    intro same
    apply hnot
    subst s
    apply Finset.mem_insert_of_mem
    apply Finset.mem_union_right
    exact Finset.mem_image.mpr ⟨k, hk, rfl⟩
  simpa only [one_div] using
    analyticAt_const.div (analyticAt_id.sub analyticAt_const)
      (sub_ne_zero.mpr hne)

/-- The pole principal part is analytic away from the singular head. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
