# ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:75091822fae238d63f1ffcdd0726a21bab9e67dc4b0579db439c72cedd25f238",
  "kind": "def",
  "lexical_name": "ext",
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
  "slug": "ext--cdf17b5a475bf565b73f8edd",
  "source": {
    "blob": "5333cfa90960789445f95c934dbd47aa2604660a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 449,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variantbb175f2f2515e7c04aae741666fe256f61e1cfd70c5b9b24598f111ff85cc431.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdf17b5a475bf565b73f8eddf75654773e438dfd8205de1c56aee869b7f19d0c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variantbb175f2f2515e7c04aae741666fe256f61e1cfd70c5b9b24598f111ff85cc431.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:75091822fae238d63f1ffcdd0726a21bab9e67dc4b0579db439c72cedd25f238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ext {ι : Type*}
    {X : C} {Y : ι → C} {f : ∀ i, Y i ⟶ X} {s t : WidePullbackCone f}
    (e : s.pt ≅ t.pt)
    (base : e.hom ≫ t.base = s.base := by cat_disch)
    (π : ∀ i, e.hom ≫ t.π i = s.π i := by cat_disch) :
    s ≅ t :=
  Cone.ext e <| by
    rintro (_ | _)
    · exact base.symm
    · exact (π _).symm

/-- Reindex a wide pullback cone. -/
@[simps! pt]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variantbb175f2f2515e7c04aae741666fe256f61e1cfd70c5b9b24598f111ff85cc431.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WidePullbacks/Variantbb175f2f2515e7c04aae741666fe256f61e1cfd70c5b9b24598f111ff85cc431.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5333cfa90960789445f95c934dbd47aa2604660a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
