# partialTraj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ced7af7fd8e1b939308f1ce02decc8dddab6693ebfce7ddeec8fa21e5f8877b",
  "kind": "def",
  "lexical_name": "partialTraj",
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
  "slug": "partialtraj--3f9d4705f6988a73bf868a01",
  "source": {
    "blob": "e4ee8f1d8ef16e1185f87af376704ea9a33fcd71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 110,
    "path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f9d4705f6988a73bf868a01028ab0c2b964ee557f16b74fe5367b556bbf1874",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ced7af7fd8e1b939308f1ce02decc8dddab6693ebfce7ddeec8fa21e5f8877b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def partialTraj (a b : ℕ) : Kernel (Π i : Iic a, X i) (Π i : Iic b, X i) :=
  if h : b ≤ a then deterministic (frestrictLe₂ h) (measurable_frestrictLe₂ h)
  else @Nat.leRec a (fun b _ ↦ Kernel (Π i : Iic a, X i) (Π i : Iic b, X i)) Kernel.id
    (fun k _ κ_k ↦ ((Kernel.id ×ₖ ((κ k).map (piSingleton k))) ∘ₖ κ_k).map (IicProdIoc k (k + 1)))
    b (Nat.le_of_not_ge h)

section Basic

/-- If `b ≤ a`, given the trajectory up to time `a`, the trajectory up to time `b` is
deterministic and is equal to the restriction of the trajectory up to time `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant44bb42f6949896a96881e9b8bc690bbc72a6526697de9b63769cba8f52d4cadd.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4ee8f1d8ef16e1185f87af376704ea9a33fcd71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
