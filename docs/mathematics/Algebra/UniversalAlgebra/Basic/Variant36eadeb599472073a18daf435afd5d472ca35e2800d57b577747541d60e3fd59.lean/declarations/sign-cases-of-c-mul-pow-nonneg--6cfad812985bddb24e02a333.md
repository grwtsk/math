# sign_cases_of_C_mul_pow_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:accebbbe-1c0d-3073-b09e-579845b579ca",
  "kind": "lemma",
  "lexical_name": "sign_cases_of_C_mul_pow_nonneg",
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
  "slug": "sign-cases-of-c-mul-pow-nonneg--6cfad812985bddb24e02a333",
  "source": {
    "blob": "6aba11020115a29c5dad3ad2efc52ef61e53b327",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 494,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant36eadeb599472073a18daf435afd5d472ca35e2800d57b577747541d60e3fd59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cfad812985bddb24e02a333e54e5756c688e6f5e4621554cbe0d2933fa887b2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant36eadeb599472073a18daf435afd5d472ca35e2800d57b577747541d60e3fd59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:accebbbe-1c0d-3073-b09e-579845b579ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sign_cases_of_C_mul_pow_nonneg [PosMulStrictMono R]
    (h : ∀ n, 0 ≤ a * b ^ n) : a = 0 ∨ 0 < a ∧ 0 ≤ b := by
  have : 0 ≤ a := by simpa only [pow_zero, mul_one] using h 0
  refine this.eq_or_lt'.imp_right fun ha ↦ ⟨ha, nonneg_of_mul_nonneg_right ?_ ha⟩
  simpa only [pow_one] using h 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant36eadeb599472073a18daf435afd5d472ca35e2800d57b577747541d60e3fd59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant36eadeb599472073a18daf435afd5d472ca35e2800d57b577747541d60e3fd59.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aba11020115a29c5dad3ad2efc52ef61e53b327` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
