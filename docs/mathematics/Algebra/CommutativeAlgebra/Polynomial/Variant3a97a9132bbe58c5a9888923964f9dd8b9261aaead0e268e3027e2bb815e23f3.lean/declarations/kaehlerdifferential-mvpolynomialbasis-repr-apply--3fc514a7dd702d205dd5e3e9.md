# KaehlerDifferential.mvPolynomialBasis_repr_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbab3133710d20a3f2c7cedfb29321c0009852a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d17581f9-02ab-e94a-3d2a-5a4789ffbc37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60a26be9-a175-f797-989e-2b3ebeae6c19",
  "kind": "lemma",
  "lexical_name": "KaehlerDifferential.mvPolynomialBasis_repr_apply",
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
  "slug": "kaehlerdifferential-mvpolynomialbasis-repr-apply--3fc514a7dd702d205dd5e3e9",
  "source": {
    "blob": "fbab3133710d20a3f2c7cedfb29321c0009852a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 76,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc514a7dd702d205dd5e3e9cb441cc32258e73f3af0e1337f8942e1a6a43a97",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60a26be9-a175-f797-989e-2b3ebeae6c19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma KaehlerDifferential.mvPolynomialBasis_repr_apply (σ) (x) (i) :
    (mvPolynomialBasis R σ).repr (D _ _ x) i = MvPolynomial.pderiv i x := by
  classical
  suffices ((Finsupp.lapply i).comp
    (mvPolynomialBasis R σ).repr.toLinearMap).compDer (D _ _) = MvPolynomial.pderiv i by
    rw [← this]; rfl
  apply MvPolynomial.derivation_ext
  intro j
  simp [Finsupp.single_apply, Pi.single_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant3a97a9132bbe58c5a9888923964f9dd8b9261aaead0e268e3027e2bb815e23f3.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbab3133710d20a3f2c7cedfb29321c0009852a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
