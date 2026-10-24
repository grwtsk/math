# four_smul_rootForm_sq_eq_coxeterWeight_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe6b77494e4557c498dd20e6af2643b22b14961b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6b2bf9f-e2bb-daff-f6e0-0c7e1f6698f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b620405b-2bee-2030-5371-9eee3b8b621d",
  "kind": "lemma",
  "lexical_name": "four_smul_rootForm_sq_eq_coxeterWeight_smul",
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
  "slug": "four-smul-rootform-sq-eq-coxeterweight-smul--b77770c577511a4f8c40a0e1",
  "source": {
    "blob": "fe6b77494e4557c498dd20e6af2643b22b14961b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 300,
    "path": "GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b77770c577511a4f8c40a0e11ba62554e9dfbd63e9d9bc882d9653b00aafecc9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b620405b-2bee-2030-5371-9eee3b8b621d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma four_smul_rootForm_sq_eq_coxeterWeight_smul (i j : ι) :
    4 • (P.RootForm (P.root i) (P.root j)) ^ 2 = P.coxeterWeight i j •
      (P.RootForm (P.root i) (P.root i) * P.RootForm (P.root j) (P.root j)) := by
  have hij : 4 • (P.RootForm (P.root i)) (P.root j) =
      2 • P.toPerfectPairing (P.root j) (2 • P.Polarization (P.root i)) := by
    rw [← toPerfectPairing_apply_apply_Polarization, LinearMap.map_smul_of_tower, ← smul_assoc,
      Nat.nsmul_eq_mul]
  have hji : 2 • (P.RootForm (P.root i)) (P.root j) =
      P.toPerfectPairing (P.root i) (2 • P.Polarization (P.root j)) := by
    rw [show (P.RootForm (P.root i)) (P.root j) = (P.RootForm (P.root j)) (P.root i) by
      apply rootForm_symmetric, ← toPerfectPairing_apply_apply_Polarization,
      LinearMap.map_smul_of_tower]
  rw [sq, nsmul_eq_mul, ← mul_assoc, ← nsmul_eq_mul, hij, ← rootForm_self_smul_coroot,
    smul_mul_assoc 2, ← mul_smul_comm, hji, ← rootForm_self_smul_coroot, map_smul, ← pairing,
    map_smul, ← pairing, smul_eq_mul, smul_eq_mul, smul_eq_mul, coxeterWeight]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe6b77494e4557c498dd20e6af2643b22b14961b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
