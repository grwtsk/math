# algEquivCMulXAddC_symm_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d7da220be2ed478f283e26c3b92a1779add030d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 299,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a59dc6b3-44f7-9c66-d8c9-c2a43946be45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15c550af-2003-7aaa-d2fb-34fc2cd194a3",
  "kind": "theorem",
  "lexical_name": "algEquivCMulXAddC_symm_eq",
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
  "slug": "algequivcmulxaddc-symm-eq--571c4b919a946db5e8dc625e",
  "source": {
    "blob": "d7da220be2ed478f283e26c3b92a1779add030d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 308,
    "line": 299,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:571c4b919a946db5e8dc625e5bd412555d37617558bd38ee9afbdd2d0f84251a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15c550af-2003-7aaa-d2fb-34fc2cd194a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–308.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algEquivCMulXAddC_symm_eq {R : Type*} [CommRing R] (a b : R) [Invertible a] :
    (algEquivCMulXAddC a b).symm =  algEquivCMulXAddC (⅟ a) (- ⅟ a * b) := by
  ext p : 1
  simp only [algEquivCMulXAddC_symm_apply, neg_mul, algEquivCMulXAddC_apply, map_neg, map_mul]
  congr
  simp [mul_add, sub_eq_add_neg]

/-- The automorphism of the polynomial algebra given by `p(X) ↦ p(X+t)`,
  with inverse `p(X) ↦ p(X-t)`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AlgebraMap/Variant82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AlgebraMap/Variant82f4a49be918a0c7b30509f139bb547cb3e26e993fc7cdd6320f9719ff963625.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7da220be2ed478f283e26c3b92a1779add030d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
