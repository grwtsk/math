# Algebra.IsPushout.symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be89a203-beb3-6d8b-d1dd-55b28fdc4251",
  "kind": "theorem",
  "lexical_name": "Algebra.IsPushout.symm",
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
  "slug": "algebra-ispushout-symm--040d9c12847b534b15eb9c71",
  "source": {
    "blob": "7423b539d1e0cd84d706380234a1f8a252cfb8aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 441,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:040d9c12847b534b15eb9c71ddfb953a577daa0a35818dc75a491fc5afe694e6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be89a203-beb3-6d8b-d1dd-55b28fdc4251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.IsPushout.symm (h : Algebra.IsPushout R S R' S') : Algebra.IsPushout R R' S S' where
  out := .of_equiv
    { __ := (TensorProduct.comm R ..).toAddEquiv.trans (equiv R S R' S').toAddEquiv,
      map_smul' _ x := x.induction_on (by simp) (fun _ _ ↦ by
        simp [smul_tmul', equiv_tmul, Algebra.smul_def, mul_left_comm]) (by simp+contextual) }
    fun _ ↦ by simp [equiv_tmul]

variable (R S R' S')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantd5697f87338afd7cc1dcd005c54c8ac3f6e090ad19ce25379bbe12eb88133fc0.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7423b539d1e0cd84d706380234a1f8a252cfb8aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
