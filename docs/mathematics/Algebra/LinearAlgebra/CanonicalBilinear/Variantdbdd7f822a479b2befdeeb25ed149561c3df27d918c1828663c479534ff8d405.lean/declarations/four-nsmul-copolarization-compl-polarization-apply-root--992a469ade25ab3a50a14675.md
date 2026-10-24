# four_nsmul_coPolarization_compl_polarization_apply_root

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
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:321fe681-87b2-7ab5-6075-5314cb28c330",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0668648-df02-5f68-9ad8-9fc047bab733",
  "kind": "lemma",
  "lexical_name": "four_nsmul_coPolarization_compl_polarization_apply_root",
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
  "slug": "four-nsmul-copolarization-compl-polarization-apply-root--992a469ade25ab3a50a14675",
  "source": {
    "blob": "fe6b77494e4557c498dd20e6af2643b22b14961b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 294,
    "path": "GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:992a469ade25ab3a50a1467583eaada21ccc68b427333ea2c20fd49429cde127",
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

Occurrence: `result:c0668648-df02-5f68-9ad8-9fc047bab733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma four_nsmul_coPolarization_compl_polarization_apply_root (i : ι) :
    (4 • P.CoPolarization ∘ₗ P.Polarization) (P.root i) =
    (P.RootForm (P.root i) (P.root i) * P.CorootForm (P.coroot i) (P.coroot i)) • P.root i := by
  rw [LinearMap.smul_apply, LinearMap.comp_apply, show 4 = 2 * 2 from rfl, mul_smul, ← map_nsmul,
    ← rootForm_self_smul_coroot, map_smul, smul_comm, ← corootForm_self_smul_root, smul_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe6b77494e4557c498dd20e6af2643b22b14961b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
