# _root_.PowerBasis.ofAdjoinEqTop_dim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a1c2a316008551e09f41a03fa7baabd34096520",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:92432737-6f2a-ce95-ef6b-1e2ea2e52251",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d34fe100-ec5f-0e30-4e1c-5d3df7a28212",
  "kind": "theorem",
  "lexical_name": "_root_.PowerBasis.ofAdjoinEqTop_dim",
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
  "slug": "root-powerbasis-ofadjoineqtop-dim--f90928e662fae9b8c6e8c9a3",
  "source": {
    "blob": "5a1c2a316008551e09f41a03fa7baabd34096520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 73,
    "path": "GRWTSK/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f90928e662fae9b8c6e8c9a37590ec18e9b1ea6e0c0a8c1774e9da66b9946de0",
  "verification": {
    "reference": "docs/verification/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d34fe100-ec5f-0e30-4e1c-5d3df7a28212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.PowerBasis.ofAdjoinEqTop_dim {x : S} (hx : IsIntegral K x)
    (hx' : K[x] = ⊤) :
    (PowerBasis.ofAdjoinEqTop hx hx').dim = (minpoly K x).natDegree := rfl

end Algebra

open Algebra

section IsIntegral

namespace PowerBasis

open Polynomial

variable {R : Type*} [CommRing R] [Algebra R S] [Algebra R K] [IsScalarTower R K S]
variable {A : Type*} [CommRing A] [Algebra R A] [Algebra S A]
variable [IsScalarTower R S A] {B : PowerBasis S A}

/-- If `B : PowerBasis S A` is such that `IsIntegral R B.gen`, then
`IsIntegral R (B.basis.repr (B.gen ^ n) i)` for all `i` if
`minpoly S B.gen = (minpoly R B.gen).map (algebraMap R S)`. This is the case if `R` is a GCD domain
and `S` is its fraction ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowerBasis/Variant3b48f4f5448b138707fa5bd49685027c2dda450633662d8d99762e9db91caba5.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a1c2a316008551e09f41a03fa7baabd34096520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
