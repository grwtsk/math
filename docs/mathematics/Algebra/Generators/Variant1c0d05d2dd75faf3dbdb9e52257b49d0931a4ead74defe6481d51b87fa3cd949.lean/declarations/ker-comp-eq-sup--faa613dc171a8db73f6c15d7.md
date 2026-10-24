# ker_comp_eq_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 778,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4b8350c-7269-4d8f-a1d9-ac5bb163840e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:011a2a33-6516-cbb8-0d88-ace1852b1fe4",
  "kind": "lemma",
  "lexical_name": "ker_comp_eq_sup",
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
  "slug": "ker-comp-eq-sup--faa613dc171a8db73f6c15d7",
  "source": {
    "blob": "edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 791,
    "line": 778,
    "path": "GRWTSK/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faa613dc171a8db73f6c15d76fbe38b0232e84f382255ff4442ec70ec9a140ef",
  "verification": {
    "reference": "docs/verification/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:011a2a33-6516-cbb8-0d88-ace1852b1fe4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 778–791.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ker_comp_eq_sup (Q : Generators S T ι') (P : Generators R S ι) :
    (Q.comp P).ker =
      Ideal.map (Q.toComp P).toAlgHom P.ker ⊔ Ideal.comap (Q.ofComp P).toAlgHom Q.ker := by
  rw [← map_ofComp_ker Q P,
    Ideal.comap_map_of_surjective _ (toAlgHom_ofComp_surjective Q P)]
  rw [← sup_assoc, Algebra.Generators.map_toComp_ker, ← RingHom.ker_eq_comap_bot]
  apply le_antisymm (le_trans le_sup_right le_sup_left)
  simp only [le_sup_left, sup_of_le_left, sup_le_iff, le_refl, and_true]
  intro x hx
  simp only [RingHom.mem_ker] at hx
  rw [Generators.ker_eq_ker_aeval_val, RingHom.mem_ker,
    ← algebraMap_self_apply (MvPolynomial.aeval _ x)]
  rw [← Generators.Hom.algebraMap_toAlgHom (Q.ofComp P), hx, map_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Generators/Variant1c0d05d2dd75faf3dbdb9e52257b49d0931a4ead74defe6481d51b87fa3cd949.lean#L778).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edf96eefcedc6a34f3c6d172d80cf6e4a33c43b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
