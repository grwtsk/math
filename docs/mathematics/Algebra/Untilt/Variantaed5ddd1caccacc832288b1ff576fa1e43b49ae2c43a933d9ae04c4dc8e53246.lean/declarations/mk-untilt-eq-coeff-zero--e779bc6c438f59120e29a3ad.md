# mk_untilt_eq_coeff_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abbb3362-825d-a31a-3b56-76d8fbb7a38b",
  "kind": "theorem",
  "lexical_name": "mk_untilt_eq_coeff_zero",
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
  "slug": "mk-untilt-eq-coeff-zero--e779bc6c438f59120e29a3ad",
  "source": {
    "blob": "0fcc7d27d6aaf183005411c6742810db7a7061b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 160,
    "path": "GRWTSK/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e779bc6c438f59120e29a3ad5cc2824e5e6b83f7311cb8a6dbbd7b3860445b54",
  "verification": {
    "reference": "docs/verification/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abbb3362-825d-a31a-3b56-76d8fbb7a38b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_untilt_eq_coeff_zero (x : PreTilt O p) :
    Ideal.Quotient.mk (Ideal.span {(p : O)}) (x.untilt) = coeff (ModP O p) p 0 x := by
  simp only [untilt]
  rw [← Ideal.Quotient.mk_out ((coeff (ModP O p) p 0) x), Ideal.Quotient.eq, ← SModEq.sub_mem]
  simpa [untiltAux] using (x.untiltAux_smodEq_untiltFun 1).symm

/--
The composition of the mod `p` map
with the untilt function equals taking the zeroth component of the perfection.
A variation of `PreTilt.mk_untilt_eq_coeff_zero`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Untilt/Variantaed5ddd1caccacc832288b1ff576fa1e43b49ae2c43a933d9ae04c4dc8e53246.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fcc7d27d6aaf183005411c6742810db7a7061b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
