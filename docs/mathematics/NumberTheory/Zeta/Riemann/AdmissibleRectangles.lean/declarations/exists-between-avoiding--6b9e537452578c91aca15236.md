# exists_between_avoiding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bf54869-e8a6-ec7a-4a86-2ec37fdd6611",
  "kind": "theorem",
  "lexical_name": "exists_between_avoiding",
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
  "slug": "exists-between-avoiding--6b9e537452578c91aca15236",
  "source": {
    "blob": "04450322ed067cd65d343985f2ea92c5a968c734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 33,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b9e537452578c91aca15236d62cf8bf0d3463df05f467357d2017a5389713f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bf54869-e8a6-ec7a-4a86-2ec37fdd6611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_between_avoiding (S : Finset ℝ) (a b : ℝ) (hab : a < b) :
    ∃ t : ℝ, a < t ∧ t < b ∧ t ∉ S := by
  classical
  induction S using Finset.induction_on generalizing a b with
  | empty =>
      obtain ⟨t, hat, htb⟩ := exists_between hab
      exact ⟨t, hat, htb, by simp⟩
  | @insert c S hc ih =>
      obtain ⟨m, ham, hmb⟩ := exists_between hab
      by_cases hcm : c ≤ m
      · obtain ⟨t, hmt, htb, htS⟩ := ih m b hmb
        refine ⟨t, ham.trans hmt, htb, ?_⟩
        simp only [Finset.mem_insert, not_or]
        exact ⟨by intro h; subst t; linarith, htS⟩
      · obtain ⟨t, hat, htm, htS⟩ := ih a m ham
        refine ⟨t, hat, htm.trans hmb, ?_⟩
        simp only [Finset.mem_insert, not_or]
        exact ⟨by intro h; subst t; linarith, htS⟩

/-- Only a complete canonical finite set is used in the avoidance construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04450322ed067cd65d343985f2ea92c5a968c734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
