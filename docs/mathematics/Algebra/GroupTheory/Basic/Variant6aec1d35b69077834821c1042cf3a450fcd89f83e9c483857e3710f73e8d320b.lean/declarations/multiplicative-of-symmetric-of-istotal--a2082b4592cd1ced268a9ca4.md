# multiplicative_of_symmetric_of_isTotal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:351248b2-6680-984c-dde0-93985c815dd3",
  "kind": "lemma",
  "lexical_name": "multiplicative_of_symmetric_of_isTotal",
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
  "slug": "multiplicative-of-symmetric-of-istotal--a2082b4592cd1ced268a9ca4",
  "source": {
    "blob": "c84fc623276b0799fb14c49f15281bddacae8efe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1067,
    "line": 1042,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6aec1d35b69077834821c1042cf3a450fcd89f83e9c483857e3710f73e8d320b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2082b4592cd1ced268a9ca4e16e790ee60ec8e3df66c0d0bd9303b73ed4da7e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant6aec1d35b69077834821c1042cf3a450fcd89f83e9c483857e3710f73e8d320b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:351248b2-6680-984c-dde0-93985c815dd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1042–1067.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multiplicative_of_symmetric_of_isTotal
    (hsymm : Symmetric p) (hf_swap : ∀ {a b}, p a b → f a b * f b a = 1)
    (hmul : ∀ {a b c}, r a b → r b c → p a b → p b c → p a c → f a c = f a b * f b c)
    {a b c : α} (pab : p a b) (pbc : p b c) (pac : p a c) : f a c = f a b * f b c := by
  have hmul' : ∀ {b c}, r b c → p a b → p b c → p a c → f a c = f a b * f b c := by
    intros b c rbc pab pbc pac
    obtain rab | rba := total_of r a b
    · exact hmul rab rbc pab pbc pac
    rw [← one_mul (f a c), ← hf_swap pab, mul_assoc]
    obtain rac | rca := total_of r a c
    · rw [hmul rba rac (hsymm pab) pac pbc]
    · rw [hmul rbc rca pbc (hsymm pac) (hsymm pab), mul_assoc, hf_swap (hsymm pac), mul_one]
  obtain rbc | rcb := total_of r b c
  · exact hmul' rbc pab pbc pac
  · rw [hmul' rcb pac (hsymm pbc) pab, mul_assoc, hf_swap (hsymm pbc), mul_one]
#align multiplicative_of_symmetric_of_is_total multiplicative_of_symmetric_of_isTotal
#align additive_of_symmetric_of_is_total additive_of_symmetric_of_isTotal

/-- If a binary function from a type equipped with a total relation `r` to a monoid is
  anti-symmetric (i.e. satisfies `f a b * f b a = 1`), in order to show it is multiplicative
  (i.e. satisfies `f a c = f a b * f b c`), we may assume `r a b` and `r b c` are satisfied.
  We allow restricting to a subset specified by a predicate `p`. -/
@[to_additive additive_of_isTotal "If a binary function from a type equipped with a total relation
`r` to an additive monoid is anti-symmetric (i.e. satisfies `f a b + f b a = 0`), in order to show
it is additive (i.e. satisfies `f a c = f a b + f b c`), we may assume `r a b` and `r b c` are
satisfied. We allow restricting to a subset specified by a predicate `p`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant6aec1d35b69077834821c1042cf3a450fcd89f83e9c483857e3710f73e8d320b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant6aec1d35b69077834821c1042cf3a450fcd89f83e9c483857e3710f73e8d320b.lean#L1042).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c84fc623276b0799fb14c49f15281bddacae8efe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
