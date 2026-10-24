# isColimitAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:799769e6b63510c7601c3fe5819087595d82d3cac1a9476c935fadc080aba959",
  "kind": "def",
  "lexical_name": "isColimitAux",
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
  "slug": "iscolimitaux--b89ecbc58a9953f141310c8c",
  "source": {
    "blob": "78a328b903e3d59b187b41841d3933dfd03158b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 577,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta1ee409136589d064f66f1f14d6fd3a324bcc2736ed852177dfc85a5625bac81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b89ecbc58a9953f141310c8c0d547d78fadd0bb5fff7e68346fc62b0ee7bb63c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta1ee409136589d064f66f1f14d6fd3a324bcc2736ed852177dfc85a5625bac81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:799769e6b63510c7601c3fe5819087595d82d3cac1a9476c935fadc080aba959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitAux (t : CokernelCofork f) (desc : ∀ s : CokernelCofork f, t.pt ⟶ s.pt)
    (fac : ∀ s : CokernelCofork f, t.π ≫ desc s = s.π)
    (uniq : ∀ (s : CokernelCofork f) (m : t.pt ⟶ s.pt) (_ : t.π ≫ m = s.π), m = desc s) :
    IsColimit t :=
  { desc
    fac := fun s j => by
      cases j
      · simp
      · exact fac s
    uniq := fun s m w => uniq s m (w Limits.WalkingParallelPair.one) }

/-- This is a more convenient formulation to show that a `CokernelCofork` constructed using
`CokernelCofork.ofπ` is a limit cone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta1ee409136589d064f66f1f14d6fd3a324bcc2736ed852177dfc85a5625bac81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Varianta1ee409136589d064f66f1f14d6fd3a324bcc2736ed852177dfc85a5625bac81.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78a328b903e3d59b187b41841d3933dfd03158b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
