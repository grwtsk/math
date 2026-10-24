# coe_basisOneI

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0dcc0342cb6db8817a4fa3fc7e0959646d0e3a5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:970c7393-4b9d-1250-47bb-89dc42fe78b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71f15fed-310b-20c1-9704-13380234ab09",
  "kind": "theorem",
  "lexical_name": "coe_basisOneI",
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
  "slug": "coe-basisonei--f66151d52cdf390be453b9e5",
  "source": {
    "blob": "0dcc0342cb6db8817a4fa3fc7e0959646d0e3a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f66151d52cdf390be453b9e560401482247a8d7464cd01fd8c076ae09a930e68",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71f15fed-310b-20c1-9704-13380234ab09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_basisOneI : ⇑basisOneI = ![1, I] :=
  funext fun i =>
    Basis.apply_eq_iff.mpr <|
      Finsupp.ext fun j => by
        fin_cases i <;> fin_cases j <;>
          -- Porting note: removed `only`, consider squeezing again
          simp [coe_basisOneI_repr, Finsupp.single_eq_of_ne, Matrix.cons_val_zero,
            Matrix.cons_val_one, Matrix.head_cons, Fin.one_eq_zero_iff, Ne.def, not_false_iff, I_re,
            Nat.succ_succ_ne_one, one_im, I_im, one_re, Finsupp.single_eq_same, Fin.zero_eq_one_iff]
set_option linter.uppercaseLean3 false in
#align complex.coe_basis_one_I Complex.coe_basisOneI

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant5805395f30c5a8e3a2873a549b5ae4e53df6ba6b9a9f8abb86e8376de6edeb34.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dcc0342cb6db8817a4fa3fc7e0959646d0e3a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
