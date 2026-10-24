# exists_smodEq_untiltAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27ff29e9-2f3e-ba26-4f42-7dbc957c3cc5",
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
  "slug": "exists-smodeq-untiltaux--d0aca758fc4fad904b7c8b7d",
  "source": {
    "blob": "0fcc7d27d6aaf183005411c6742810db7a7061b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 105,
    "path": "GRWTSK/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0aca758fc4fad904b7c8b7d82803f949b8e0020c238126955e6d3775fda4a85",
  "verification": {
    "reference": "docs/verification/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27ff29e9-2f3e-ba26-4f42-7dbc957c3cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–115.

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

[Verification target and public status](../../../../../verification/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fcc7d27d6aaf183005411c6742810db7a7061b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
