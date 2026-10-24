# Ideal.exists_ideal_lt_liesOver_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9be9ea0f-3e7c-f02a-fab1-0356f7cb3f07",
  "kind": "lemma",
  "lexical_name": "Ideal.exists_ideal_lt_liesOver_of_lt",
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
  "slug": "ideal-exists-ideal-lt-liesover-of-lt--b3d53a39037da5c05852ab68",
  "source": {
    "blob": "6d3c66ce1a8de8bd20064503590da69298a62f60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 64,
    "path": "GRWTSK/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d53a39037da5c05852ab683492499221b33af651064fc7a6c277ee7ba863d9",
  "verification": {
    "reference": "docs/verification/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9be9ea0f-3e7c-f02a-fab1-0356f7cb3f07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.exists_ideal_lt_liesOver_of_lt [Algebra.HasGoingDown R S]
    {p q : Ideal R} [p.IsPrime] [q.IsPrime] (Q : Ideal S) [Q.IsPrime] [Q.LiesOver q]
    (hpq : p < q) : ∃ P < Q, P.IsPrime ∧ P.LiesOver p := by
  obtain ⟨P, hPQ, _, _⟩ := Q.exists_ideal_le_liesOver_of_le (p := p) (q := q) hpq.le
  refine ⟨P, ?_, inferInstance, inferInstance⟩
  by_contra hc
  have : P = Q := eq_of_le_of_not_lt hPQ hc
  subst this
  simp [P.over_def p, P.over_def q] at hpq

namespace Algebra.HasGoingDown

variable {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]

/-- An `R`-algebra `S` has the going down property if and only if generalizations lift
along `Spec S → Spec R`. -/
@[stacks 00HW "(1)"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GoingDown/Variant7d35a107883b3748e8b4d9817175359cf46b9979ea419a370fac6a1b222a97af.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3c66ce1a8de8bd20064503590da69298a62f60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
