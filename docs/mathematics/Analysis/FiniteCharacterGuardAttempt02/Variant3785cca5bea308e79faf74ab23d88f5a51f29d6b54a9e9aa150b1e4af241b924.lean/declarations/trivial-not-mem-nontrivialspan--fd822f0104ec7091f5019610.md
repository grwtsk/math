# trivial_not_mem_nontrivialSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:353dad82-e62b-b2fe-ff7f-98a1cc586006",
  "kind": "theorem",
  "lexical_name": "trivial_not_mem_nontrivialSpan",
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
  "slug": "trivial-not-mem-nontrivialspan--fd822f0104ec7091f5019610",
  "source": {
    "blob": "6b9a99eefbdb251a543576e93b030fbc23fa2265",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 89,
    "path": "GRWTSK/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd822f0104ec7091f50196100273a8b992afc41774f4727a64aa6598cd11e938",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:353dad82-e62b-b2fe-ff7f-98a1cc586006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivial_not_mem_nontrivialSpan :
    (fun _ : G => (1 : ℂ)) ∉ nontrivialSpan (G := G) := by
  intro h
  have hz := nontrivialSpan_le_trivial_kernel h
  change coefficientMap 0 (fun _ : G => (1 : ℂ)) = 0 at hz
  have he : coefficientMap (0 : AddChar G ℂ) (fun _ : G => (1 : ℂ)) = 1 := by
    simp [trivial_coefficient_eq_mean]
  rw [he] at hz
  exact one_ne_zero hz

end ContinuousResearch.FiniteCharacterGuard
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteCharacterGuardAttempt02/Variant3785cca5bea308e79faf74ab23d88f5a51f29d6b54a9e9aa150b1e4af241b924.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b9a99eefbdb251a543576e93b030fbc23fa2265` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
