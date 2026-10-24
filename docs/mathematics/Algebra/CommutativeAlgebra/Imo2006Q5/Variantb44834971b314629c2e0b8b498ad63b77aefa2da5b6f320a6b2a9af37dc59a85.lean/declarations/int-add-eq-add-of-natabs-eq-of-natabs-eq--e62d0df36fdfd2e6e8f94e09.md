# Int.add_eq_add_of_natAbs_eq_of_natAbs_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "966b4861c2fcf951a36c853ed1d97f02b150f986",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c69da14b-53f2-3aef-9205-9ed9b25cf053",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:473d3935-eb94-c612-cf09-4487a594dfc4",
  "kind": "theorem",
  "lexical_name": "Int.add_eq_add_of_natAbs_eq_of_natAbs_eq",
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
  "slug": "int-add-eq-add-of-natabs-eq-of-natabs-eq--e62d0df36fdfd2e6e8f94e09",
  "source": {
    "blob": "966b4861c2fcf951a36c853ed1d97f02b150f986",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e62d0df36fdfd2e6e8f94e09ef567db7da92c7bdc84b7663829086b6f3882b66",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:473d3935-eb94-c612-cf09-4487a594dfc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Int.add_eq_add_of_natAbs_eq_of_natAbs_eq {a b c d : ℤ} (hne : a ≠ b)
    (h₁ : (c - a).natAbs = (d - b).natAbs) (h₂ : (c - b).natAbs = (d - a).natAbs) :
    a + b = c + d := by
  rcases Int.natAbs_eq_natAbs_iff.1 h₁ with h₁ | h₁
  · rcases Int.natAbs_eq_natAbs_iff.1 h₂ with h₂ | h₂
    · exact (hne <| by linarith).elim
    · linarith
  · linarith

/-- The main lemma in the proof: if $P^k(t)=t$, then $P(P(t))=t$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Imo2006Q5/Variantb44834971b314629c2e0b8b498ad63b77aefa2da5b6f320a6b2a9af37dc59a85.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `966b4861c2fcf951a36c853ed1d97f02b150f986` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
