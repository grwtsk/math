# ComplexFeshbachInertiaObligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14de819704c1575907b38a244bbc9f8cd0f5d312587855b330f12ef8f2f9495d",
  "kind": "def",
  "lexical_name": "ComplexFeshbachInertiaObligation",
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
  "slug": "complexfeshbachinertiaobligation--258d9dc29056f616aa48aa4b",
  "source": {
    "blob": "03974b7a71e86cf5913d651ff76be304f775c002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 26,
    "path": "GRWTSK/Analysis/19016c3e40365d9731f9daf28f7ff76484125fc9e20514bb5972979eb168a775ComplexInertiaPr/Variantb275dbb186fc2ff37ee3115c482ff51c225c23a1cb1115254117e64f51ede35f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:258d9dc29056f616aa48aa4b6fbdd6f240f4d626315d001f31842733f6678e29",
  "verification": {
    "reference": "docs/verification/Analysis/19016c3e40365d9731f9daf28f7ff76484125fc9e20514bb5972979eb168a775ComplexInertiaPr/Variantb275dbb186fc2ff37ee3115c482ff51c225c23a1cb1115254117e64f51ede35f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14de819704c1575907b38a244bbc9f8cd0f5d312587855b330f12ef8f2f9495d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ComplexFeshbachInertiaObligation {m n : Type*}
    [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
    (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] : Prop :=
  ∀ (_hA : A.IsHermitian) (_hB : B.PosDef)
    (hH : (Matrix.fromBlocks A Cᴴ C B).IsHermitian)
    (hFB : (Matrix.fromBlocks (Feshbach.schur A Cᴴ C B)
      (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B).IsHermitian),
    complexInertia (Matrix.fromBlocks A Cᴴ C B) hH =
      complexInertia (Matrix.fromBlocks (Feshbach.schur A Cᴴ C B)
        (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B) hFB

#print ComplexFeshbachInertiaObligation
#print axioms ComplexFeshbachInertiaObligation

end JHFDispositionDraft
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/19016c3e40365d9731f9daf28f7ff76484125fc9e20514bb5972979eb168a775ComplexInertiaPr/Variantb275dbb186fc2ff37ee3115c482ff51c225c23a1cb1115254117e64f51ede35f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/19016c3e40365d9731f9daf28f7ff76484125fc9e20514bb5972979eb168a775ComplexInertiaPr/Variantb275dbb186fc2ff37ee3115c482ff51c225c23a1cb1115254117e64f51ede35f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03974b7a71e86cf5913d651ff76be304f775c002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
