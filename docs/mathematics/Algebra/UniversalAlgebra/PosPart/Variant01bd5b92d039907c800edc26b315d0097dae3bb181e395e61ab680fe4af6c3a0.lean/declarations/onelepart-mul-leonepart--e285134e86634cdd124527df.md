# oneLePart_mul_leOnePart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee624fe3-84cf-e576-5dfb-ca30709439f2",
  "kind": "lemma",
  "lexical_name": "oneLePart_mul_leOnePart",
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
  "slug": "onelepart-mul-leonepart--e285134e86634cdd124527df",
  "source": {
    "blob": "907649038723c19ec641f170e10e1475fef661b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 169,
    "path": "GRWTSK/Algebra/UniversalAlgebra/PosPart/Variant01bd5b92d039907c800edc26b315d0097dae3bb181e395e61ab680fe4af6c3a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e285134e86634cdd124527df5f3114c36cfa5f458586fd03dd558c39dbde74a6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/PosPart/Variant01bd5b92d039907c800edc26b315d0097dae3bb181e395e61ab680fe4af6c3a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee624fe3-84cf-e576-5dfb-ca30709439f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma oneLePart_mul_leOnePart (a : α) : a⁺ᵐ * a⁻ᵐ = |a|ₘ := by
  rw [oneLePart_def, sup_mul, one_mul, leOnePart_def, mul_sup, mul_one, mul_inv_cancel, sup_assoc,
    ← sup_assoc a, sup_eq_right.2 le_sup_right]
  exact sup_eq_left.2 <| one_le_mabs a

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/PosPart/Variant01bd5b92d039907c800edc26b315d0097dae3bb181e395e61ab680fe4af6c3a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/PosPart/Variant01bd5b92d039907c800edc26b315d0097dae3bb181e395e61ab680fe4af6c3a0.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `907649038723c19ec641f170e10e1475fef661b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
