# not_isUnit_of_mem_primeFactors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3aa73a83-6538-31e3-6b5e-fd6d7b6a0d0b",
  "kind": "lemma",
  "lexical_name": "not_isUnit_of_mem_primeFactors",
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
  "slug": "not-isunit-of-mem-primefactors--64e3695bf920d138f950bd97",
  "source": {
    "blob": "1405b498718f1c58eef94e3763def02a970d5bda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 81,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64e3695bf920d138f950bd971d8507d10328be89a070a8605974a01c91ba6ea9",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3aa73a83-6538-31e3-6b5e-fd6d7b6a0d0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_isUnit_of_mem_primeFactors {n p : ℕ} (h : p ∈ n.primeFactors) :
    ¬ IsUnit (p : ZMod n) := by
  rw [isUnit_iff_coprime]
  exact (Prime.dvd_iff_not_coprime <| prime_of_mem_primeFactors h).mp <| dvd_of_mem_primeFactors h

/-- Any element of `ZMod N` has the form `u * d` where `u` is a unit and `d` is a divisor of `N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1405b498718f1c58eef94e3763def02a970d5bda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
