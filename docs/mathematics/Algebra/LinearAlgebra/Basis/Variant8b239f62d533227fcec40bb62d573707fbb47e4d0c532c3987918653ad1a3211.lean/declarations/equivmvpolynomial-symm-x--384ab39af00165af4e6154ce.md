# equivMvPolynomial_symm_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "948212500b169353f8cb0d106dccf00be8def421",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7565dd81-0e1e-d0f8-70b2-4f8170f57c9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74e6f10e-9b5a-c4bc-2b76-6557453e0fe8",
  "kind": "lemma",
  "lexical_name": "equivMvPolynomial_symm_X",
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
  "slug": "equivmvpolynomial-symm-x--384ab39af00165af4e6154ce",
  "source": {
    "blob": "948212500b169353f8cb0d106dccf00be8def421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 62,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:384ab39af00165af4e6154cea0a3f425d7466dc393a5e95ff823a3eed666499e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74e6f10e-9b5a-c4bc-2b76-6557453e0fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equivMvPolynomial_symm_X (b : Basis κ R M) (i : κ) :
    (equivMvPolynomial b).symm (MvPolynomial.X i) = ι R M (b i) :=
  (equivMvPolynomial b).toEquiv.symm_apply_eq.mpr <| equivMvPolynomial_ι_apply b i |>.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant8b239f62d533227fcec40bb62d573707fbb47e4d0c532c3987918653ad1a3211.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948212500b169353f8cb0d106dccf00be8def421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
