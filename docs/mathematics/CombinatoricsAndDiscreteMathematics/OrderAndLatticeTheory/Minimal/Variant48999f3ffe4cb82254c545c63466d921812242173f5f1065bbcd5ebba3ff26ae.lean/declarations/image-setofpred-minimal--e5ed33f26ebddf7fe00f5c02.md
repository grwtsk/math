# image_setOfPred_minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b952108b-5b9d-cf7e-129e-86890b36059e",
  "kind": "theorem",
  "lexical_name": "image_setOfPred_minimal",
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
  "slug": "image-setofpred-minimal--e5ed33f26ebddf7fe00f5c02",
  "source": {
    "blob": "1d63297e473199726896d578e323115aea2d7072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 570,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variant48999f3ffe4cb82254c545c63466d921812242173f5f1065bbcd5ebba3ff26ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5ed33f26ebddf7fe00f5c02c880d56c9091d3eb91791e8b1aefefac1bc18b6f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variant48999f3ffe4cb82254c545c63466d921812242173f5f1065bbcd5ebba3ff26ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b952108b-5b9d-cf7e-129e-86890b36059e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 570–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_setOfPred_minimal (f : α ≃o β) (P : α → Prop) :
    f '' {x | Minimal P x} = {x | Minimal (fun x ↦ P (f.symm x)) x} := by
  convert! _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MinimalForEqIff.Variantd7761536a05773d07d13731bec59345c1d5b005aab06e8147580779664bee737.image_monotone_setOfPred_minimal (f := f) (by simp [f.le_iff_le])
  aesop

@[deprecated (since := "2026-07-09")]
alias image_setOf_minimal := image_setOfPred_minimal
@[deprecated (since := "2026-07-09")]
alias image_setOf_maximal := image_setOfPred_maximal

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variant48999f3ffe4cb82254c545c63466d921812242173f5f1065bbcd5ebba3ff26ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Minimal/Variant48999f3ffe4cb82254c545c63466d921812242173f5f1065bbcd5ebba3ff26ae.lean#L570).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d63297e473199726896d578e323115aea2d7072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
