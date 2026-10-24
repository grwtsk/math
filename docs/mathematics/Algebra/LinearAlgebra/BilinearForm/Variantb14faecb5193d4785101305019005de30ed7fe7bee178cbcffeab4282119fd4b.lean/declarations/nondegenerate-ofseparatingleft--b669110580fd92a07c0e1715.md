# Nondegenerate.ofSeparatingLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d037445-fbf8-7d04-5f54-57709452ea2d",
  "kind": "lemma",
  "lexical_name": "Nondegenerate.ofSeparatingLeft",
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
  "slug": "nondegenerate-ofseparatingleft--b669110580fd92a07c0e1715",
  "source": {
    "blob": "c54571748baeb5cfe58bc42ca565500d82ef4de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 528,
    "line": 521,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantb14faecb5193d4785101305019005de30ed7fe7bee178cbcffeab4282119fd4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b669110580fd92a07c0e17155a91092df6b00e09c9988cdf534f7c067bb1f50d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variantb14faecb5193d4785101305019005de30ed7fe7bee178cbcffeab4282119fd4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d037445-fbf8-7d04-5f54-57709452ea2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–528.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nondegenerate.ofSeparatingLeft (hB : SeparatingLeft B) : B.Nondegenerate := by
  obtain ⟨ι, b⟩ := Module.Free.exists_basis R₂ M₂
  have : Finite ι := Module.Finite.finite_basis b
  have : Fintype ι := Fintype.ofFinite ι
  have : DecidableEq ι := Classical.decEq ι
  rwa [← BilinForm.nondegenerate_toMatrix_iff b, Matrix.nondegenerate_iff_det_ne_zero,
    ← Matrix.separatingLeft_iff_det_ne_zero, separatingLeft_toMatrix_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variantb14faecb5193d4785101305019005de30ed7fe7bee178cbcffeab4282119fd4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantb14faecb5193d4785101305019005de30ed7fe7bee178cbcffeab4282119fd4b.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c54571748baeb5cfe58bc42ca565500d82ef4de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
