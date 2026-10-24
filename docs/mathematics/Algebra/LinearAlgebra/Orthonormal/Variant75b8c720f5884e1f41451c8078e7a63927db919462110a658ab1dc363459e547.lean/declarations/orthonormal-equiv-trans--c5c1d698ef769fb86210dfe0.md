# Orthonormal.equiv_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07b398494eadbbe032fd777026bc3b3ca030bf19",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20f3de70-1544-d238-3bc4-fbc80f821ad3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2635b1c2-e7b2-b7e9-96a5-ad38e69f0b03",
  "kind": "theorem",
  "lexical_name": "Orthonormal.equiv_trans",
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
  "slug": "orthonormal-equiv-trans--c5c1d698ef769fb86210dfe0",
  "source": {
    "blob": "07b398494eadbbe032fd777026bc3b3ca030bf19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 380,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5c1d698ef769fb86210dfe0092bb92fdd759a950dc9588d4f7cb852d7c7a0a3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2635b1c2-e7b2-b7e9-96a5-ad38e69f0b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Orthonormal.equiv_trans {v : Basis ι 𝕜 E} (hv : Orthonormal 𝕜 v) {v' : Basis ι' 𝕜 E'}
    (hv' : Orthonormal 𝕜 v') (e : ι ≃ ι') {v'' : Basis ι'' 𝕜 E''} (hv'' : Orthonormal 𝕜 v'')
    (e' : ι' ≃ ι'') : (hv.equiv hv' e).trans (hv'.equiv hv'' e') = hv.equiv hv'' (e.trans e') :=
  v.ext_linearIsometryEquiv fun i => by
    simp only [LinearIsometryEquiv.trans_apply, Orthonormal.equiv_apply, e.coe_trans,
      Function.comp_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b398494eadbbe032fd777026bc3b3ca030bf19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
