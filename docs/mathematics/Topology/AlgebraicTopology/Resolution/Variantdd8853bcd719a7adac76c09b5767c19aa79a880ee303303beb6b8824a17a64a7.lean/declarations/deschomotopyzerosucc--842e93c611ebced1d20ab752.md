# descHomotopyZeroSucc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1241748ef6d909e1d5330be1e761144d05ccee72b13e600766bc5002f93d2d9f",
  "kind": "def",
  "lexical_name": "descHomotopyZeroSucc",
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
  "slug": "deschomotopyzerosucc--842e93c611ebced1d20ab752",
  "source": {
    "blob": "5023b82ad3f05a9aa72cbda7e98d8480f2852cdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 141,
    "path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:842e93c611ebced1d20ab7528d8b2a50b04fc0bd5c82b4f9ad58e3bd1d1ca1dd",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1241748ef6d909e1d5330be1e761144d05ccee72b13e600766bc5002f93d2d9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def descHomotopyZeroSucc {Y Z : C} {I : InjectiveResolution Y} {J : InjectiveResolution Z}
    (f : I.cocomplex ⟶ J.cocomplex) (n : ℕ) (g : I.cocomplex.X (n + 1) ⟶ J.cocomplex.X n)
    (g' : I.cocomplex.X (n + 2) ⟶ J.cocomplex.X (n + 1))
    (w : f.f (n + 1) = I.cocomplex.d (n + 1) (n + 2) ≫ g' + g ≫ J.cocomplex.d n (n + 1)) :
    I.cocomplex.X (n + 3) ⟶ J.cocomplex.X (n + 2) :=
  (I.exact_succ (n + 1)).descToInjective (f.f (n + 2) - g' ≫ J.cocomplex.d _ _) (by
      dsimp
      rw [Preadditive.comp_sub, ← HomologicalComplex.Hom.comm, w, Preadditive.add_comp,
        Category.assoc, Category.assoc, HomologicalComplex.d_comp_d, comp_zero,
        add_zero, sub_self])

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Resolution/Variantdd8853bcd719a7adac76c09b5767c19aa79a880ee303303beb6b8824a17a64a7.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5023b82ad3f05a9aa72cbda7e98d8480f2852cdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
