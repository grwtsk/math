# HomEquivalence.injective_on_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28c51396-dbc0-48a5-d932-1db67bcb2338",
  "kind": "theorem",
  "lexical_name": "HomEquivalence.injective_on_hom",
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
  "slug": "homequivalence-injective-on-hom--febaec26dc1951c1e8d140e6",
  "source": {
    "blob": "71791e64dd0aa9728f5fc8459dd265651cafdbf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/HomSetInverses/Variant45d92d9ee7be6729/HomSetInverseDataAndBijectivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:febaec26dc1951c1e8d140e60a215a894b07453203bb8a474db3a10bb358c7a4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/HomSetInverses/Variant45d92d9ee7be6729/HomSetInverseDataAndBijectivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28c51396-dbc0-48a5-d932-1db67bcb2338`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HomEquivalence.injective_on_hom
  {C D : Category} {F : Functor C D}
  (H : HomEquivalence F)
  {A B : C.Obj}
  (f g : C.Hom A B) :
  F.map f = F.map g → f = g :=
by
  intro h
  calc
    f = H.reverse (F.map f) := (H.reverseForward f).symm
    _ = H.reverse (F.map g) := by rw [h]
    _ = g := H.reverseForward g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/HomSetInverses/Variant45d92d9ee7be6729/HomSetInverseDataAndBijectivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/HomSetInverses/Variant45d92d9ee7be6729/HomSetInverseDataAndBijectivity.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71791e64dd0aa9728f5fc8459dd265651cafdbf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
