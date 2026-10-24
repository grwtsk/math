# Monic.supDegree_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9765a8dc-34b0-ae18-6ab1-71db9fb09345",
  "kind": "lemma",
  "lexical_name": "Monic.supDegree_pow",
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
  "slug": "monic-supdegree-pow--bf010794fe1d65f052acd38e",
  "source": {
    "blob": "5bc7dc2ee51ce47edbeefabfc2c9c79f1f84b70e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 567,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant6901cc6f088160584946955e178b03533f472c3664ba26ab1b038bdddb3cd07c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf010794fe1d65f052acd38e5e09b29fcb3747a1034aa6f6dc2ccf7acfa57042",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Degree/Variant6901cc6f088160584946955e178b03533f472c3664ba26ab1b038bdddb3cd07c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9765a8dc-34b0-ae18-6ab1-71db9fb09345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 567–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monic.supDegree_pow
    (hzero : D 0 = 0) (hadd : ∀ a1 a2, D (a1 + a2) = D a1 + D a2) (hD : D.Injective)
    [Nontrivial R] (hp : p.Monic D) :
    (p ^ n).supDegree D = n • p.supDegree D := by
  induction n with
  | zero => rw [pow_zero, zero_nsmul, one_def, supDegree_single 0 1, if_neg one_ne_zero, hzero]
  | succ n ih => rw [pow_succ', (hp.pow hadd hD).supDegree_mul_of_ne_zero_left hD hadd hp.ne_zero,
      ih, succ_nsmul']

end AddMonoid

end LinearOrder

section InfDegree

variable [SemilatticeInf T] [OrderTop T] (D : A → T)

/-- Let `R` be a semiring, let `A` be an `AddZeroClass`, let `T` be an `OrderTop`,
and let `D : A → T` be a "degree" function.
For an element `f : R[A]`, the element `infDegree f : T` is the infimum of all the elements in the
support of `f`, or `⊤` if `f` is zero.
Often, the Type `T` is `WithTop A`,
If, further, `A` has a linear order, then this notion coincides with the usual one,
using the minimum of the exponents. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Degree/Variant6901cc6f088160584946955e178b03533f472c3664ba26ab1b038bdddb3cd07c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Degree/Variant6901cc6f088160584946955e178b03533f472c3664ba26ab1b038bdddb3cd07c.lean#L567).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc7dc2ee51ce47edbeefabfc2c9c79f1f84b70e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
