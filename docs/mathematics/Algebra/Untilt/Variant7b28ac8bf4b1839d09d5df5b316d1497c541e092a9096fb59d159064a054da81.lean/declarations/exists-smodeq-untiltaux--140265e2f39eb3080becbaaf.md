# exists_smodEq_untiltAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "838eedf603a7b219fff35956a254c2ff4dddcc6a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc845994-fd53-b2b9-d79b-8b57ec3fa59a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cea68527-e6e5-348e-ddde-28373ef452a1",
  "kind": "lemma",
  "lexical_name": "exists_smodEq_untiltAux",
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
  "slug": "exists-smodeq-untiltaux--140265e2f39eb3080becbaaf",
  "source": {
    "blob": "838eedf603a7b219fff35956a254c2ff4dddcc6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:140265e2f39eb3080becbaaff2062d0e676cf7a5fdf1b2a8fc3f742a637a8089",
  "verification": {
    "reference": "docs/verification/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cea68527-e6e5-348e-ddde-28373ef452a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_smodEq_untiltAux (x : PreTilt O p) :
    ∃ y, ∀ (n : ℕ), x.untiltAux n ≡ y [SMOD Ideal.span {(p : O)} ^ n • (⊤ : Ideal O)] := by
  refine IsPrecomplete.prec' x.untiltAux (fun {m n} h ↦ ?_)
  simpa only [span_singleton_pow, smul_eq_mul, mul_top, SModEq.sub_mem,
      mem_span_singleton] using x.pow_dvd_untiltAux_sub_untiltAux h

/--
Given a `p`-adically complete ring `O`, this is the underlying function of the untilt map.
It is defined as the limit of `p^n`-th powers of arbitrary lifts in `O` of the
`n`-th component from the perfection of `O/p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Untilt/Variant7b28ac8bf4b1839d09d5df5b316d1497c541e092a9096fb59d159064a054da81.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `838eedf603a7b219fff35956a254c2ff4dddcc6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
