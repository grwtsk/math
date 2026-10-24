# Pi.single_additiveOfMul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad4967e3-2d84-5a3d-f7f6-9cc20394a2c4",
  "kind": "lemma",
  "lexical_name": "Pi.single_additiveOfMul_eq",
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
  "slug": "pi-single-additiveofmul-eq--b2703d017288be273f592c60",
  "source": {
    "blob": "55aed92411b5d969aa72977c6a861d322cd60891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 475,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2703d017288be273f592c605f9cc5bd8aa79d562c8b813acaf3b305721a54c5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad4967e3-2d84-5a3d-f7f6-9cc20394a2c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–481.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pi.single_additiveOfMul_eq {ι : Type*} [DecidableEq ι] {M : ι → Type*}
    [(i : ι) → Monoid (M i)] (i : ι) (a : M i) (j : ι) :
    Pi.single (M := fun i ↦ Additive (M i)) i (.ofMul a) j = .ofMul (Pi.mulSingle i a j) := by
  rcases eq_or_ne j i with rfl | h
  · simp only [mulSingle_eq_same, single_eq_same]
  · simp only [single, ne_eq, h, not_false_eq_true, Function.update_of_ne, zero_apply, mulSingle,
      one_apply, ofMul_one]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55aed92411b5d969aa72977c6a861d322cd60891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
