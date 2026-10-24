# Homotopy.precomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e0eced41d074c85710b54a33f8cc3d78d14d15d62b2a20fcd0d7c91509f8cc9",
  "kind": "def",
  "lexical_name": "Homotopy.precomp",
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
  "slug": "homotopy-precomp--264e10b67ba14db2804a83cc",
  "source": {
    "blob": "79b91540835f885ee3fc62103de4f3c72fc01f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 152,
    "path": "GRWTSK/Topology/AlgebraicTopology/RelativeMorphism/Variant94934e338af4e5f93f0728adc4b81d189ad63b5b6cd78cfc118eff3c2a8310f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:264e10b67ba14db2804a83cceed662bd7e3151c97be44ae42ed918ea29d7ef15",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/RelativeMorphism/Variant94934e338af4e5f93f0728adc4b81d189ad63b5b6cd78cfc118eff3c2a8310f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e0eced41d074c85710b54a33f8cc3d78d14d15d62b2a20fcd0d7c91509f8cc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Homotopy.precomp
    {f' g' : RelativeMorphism B C ψ} (h : Homotopy f' g')
    (f : RelativeMorphism A B φ) {φψ : (A : SSet) ⟶ (C : SSet)}
    (fac : φ ≫ ψ = φψ) :
    Homotopy (f.comp f' fac) (f.comp g' fac) where
  h := f.map ▷ _ ≫ h.h
  rel := by
    rw [← fac, Category.assoc, ← comp_whiskerRight_assoc, f.comm,
      comp_whiskerRight_assoc, h.rel, whiskerRight_fst_assoc]

/-- The postcomposition of an homotopy class by a relative morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/RelativeMorphism/Variant94934e338af4e5f93f0728adc4b81d189ad63b5b6cd78cfc118eff3c2a8310f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/RelativeMorphism/Variant94934e338af4e5f93f0728adc4b81d189ad63b5b6cd78cfc118eff3c2a8310f7.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79b91540835f885ee3fc62103de4f3c72fc01f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
