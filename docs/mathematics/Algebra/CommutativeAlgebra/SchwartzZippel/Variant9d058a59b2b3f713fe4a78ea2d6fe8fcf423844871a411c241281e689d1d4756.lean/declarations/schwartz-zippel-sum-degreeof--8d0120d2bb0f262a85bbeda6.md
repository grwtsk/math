# schwartz_zippel_sum_degreeOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa336eb96d1015376dc86bbb6561590af0a28021",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88c157a0-599e-786a-f887-a05328e9da54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed8e534d-c15c-379b-413f-ce9939e8ccd1",
  "kind": "lemma",
  "lexical_name": "schwartz_zippel_sum_degreeOf",
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
  "slug": "schwartz-zippel-sum-degreeof--8d0120d2bb0f262a85bbeda6",
  "source": {
    "blob": "aa336eb96d1015376dc86bbb6561590af0a28021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 175,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d0120d2bb0f262a85bbeda681e0c5e17552534fd3421f05b8e2324d910e253c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed8e534d-c15c-379b-413f-ce9939e8ccd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma schwartz_zippel_sum_degreeOf {n} {p : MvPolynomial (Fin n) R} (hp : p ≠ 0)
    (S : Fin n → Finset R) :
    #{x ∈ S ^^ n | eval x p = 0} / ∏ i, (#(S i) : ℚ≥0) ≤ ∑ i, (p.degreeOf i / #(S i) : ℚ≥0) := by
  calc
    _ ≤ p.support.sup fun s ↦ ∑ i, (s i / #(S i) : ℚ≥0) := schwartz_zippel_sup_sum hp S
    _ ≤ ∑ i, (p.degreeOf i / #(S i) : ℚ≥0) := Finset.sup_le fun s hs ↦ by
      gcongr with i; exact monomial_le_degreeOf i hs

/-- The **Schwartz-Zippel lemma**

For a nonzero multivariable polynomial `p` over an integral domain, the probability that `p`
evaluates to zero at points drawn at random from some finite subset `S` of the integral domain is
bounded by the degree of `p` over `#S`. This version presents this lemma in terms of `Finset`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SchwartzZippel/Variant9d058a59b2b3f713fe4a78ea2d6fe8fcf423844871a411c241281e689d1d4756.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa336eb96d1015376dc86bbb6561590af0a28021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
