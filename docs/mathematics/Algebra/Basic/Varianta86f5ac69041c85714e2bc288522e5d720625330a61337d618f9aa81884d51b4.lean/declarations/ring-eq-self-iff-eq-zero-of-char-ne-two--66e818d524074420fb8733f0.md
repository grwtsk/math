# Ring.eq_self_iff_eq_zero_of_char_ne_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86d11ae7-5db4-f1b2-c96e-cf8a632ad32a",
  "kind": "lemma",
  "lexical_name": "Ring.eq_self_iff_eq_zero_of_char_ne_two",
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
  "slug": "ring-eq-self-iff-eq-zero-of-char-ne-two--66e818d524074420fb8733f0",
  "source": {
    "blob": "eed4134c6eb0c93e27c902066472fdd645202b5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 131,
    "path": "GRWTSK/Algebra/Basic/Varianta86f5ac69041c85714e2bc288522e5d720625330a61337d618f9aa81884d51b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66e818d524074420fb8733f0cc70a99956f0c4c171c5f34aee747fccd4dbc28e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta86f5ac69041c85714e2bc288522e5d720625330a61337d618f9aa81884d51b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86d11ae7-5db4-f1b2-c96e-cf8a632ad32a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ring.eq_self_iff_eq_zero_of_char_ne_two {R : Type*} [NonAssocRing R] [Nontrivial R]
    [NoZeroDivisors R] (hR : ringChar R ≠ 2) {a : R} : -a = a ↔ a = 0 :=
  ⟨fun h =>
    (mul_eq_zero.mp <| (two_mul a).trans <| neg_eq_iff_add_eq_zero.mp h).resolve_left
      (Ring.two_ne_zero hR),
    fun h => ((congr_arg (fun x => -x) h).trans neg_zero).trans h.symm⟩

end

section Prod
variable (S : Type*) [AddMonoidWithOne R] [AddMonoidWithOne S] (p q : ℕ) [CharP R p]

/-- The characteristic of the product of rings is the least common multiple of the
characteristics of the two rings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta86f5ac69041c85714e2bc288522e5d720625330a61337d618f9aa81884d51b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta86f5ac69041c85714e2bc288522e5d720625330a61337d618f9aa81884d51b4.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eed4134c6eb0c93e27c902066472fdd645202b5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
