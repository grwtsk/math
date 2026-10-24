# polePrincipalPart_analyticAt_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71d2a0af-b09b-7e2c-718d-0ba372706353",
  "kind": "theorem",
  "lexical_name": "polePrincipalPart_analyticAt_of_not_mem",
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
  "slug": "poleprincipalpart-analyticat-of-not-mem--f5e78656912fc7e4e97a1349",
  "source": {
    "blob": "dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 149,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5e78656912fc7e4e97a13490598d99a0a3b19a450ca4eb4d60ef2c924e0091d",
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

Occurrence: `result:71d2a0af-b09b-7e2c-718d-0ba372706353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polePrincipalPart_analyticAt_of_not_mem
    (N : ℕ) {s : ℂ} (hnot : s ∉ singularHead N) :
    AnalyticAt ℂ polePrincipalPart s := by
  have hne := ne_one_of_not_mem_singularHead N hnot
  have h : AnalyticAt ℂ (fun w : ℂ => (-1 : ℂ) / (w - 1)) s :=
    analyticAt_const.div (analyticAt_id.sub analyticAt_const)
      (sub_ne_zero.mpr hne)
  simpa [polePrincipalPart, neg_div, one_div] using h

/-- The complete fixed principal part is analytic at every nonsingular point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleFiniteRemoval.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfb5171d1cb9af65ae07cd5e1f9ab88648e645b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
