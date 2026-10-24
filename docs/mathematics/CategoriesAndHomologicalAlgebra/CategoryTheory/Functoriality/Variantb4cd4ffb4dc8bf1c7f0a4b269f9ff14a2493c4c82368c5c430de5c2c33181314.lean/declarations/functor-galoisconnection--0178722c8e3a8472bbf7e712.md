# functor_galoisConnection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb4e1630-5571-339c-569c-efa4fe54bb29",
  "kind": "theorem",
  "lexical_name": "functor_galoisConnection",
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
  "slug": "functor-galoisconnection--0178722c8e3a8472bbf7e712",
  "source": {
    "blob": "d0043ffdf5aed71e31b184125dfffae38423ff78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 286,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variantb4cd4ffb4dc8bf1c7f0a4b269f9ff14a2493c4c82368c5c430de5c2c33181314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0178722c8e3a8472bbf7e7124e2f8498c3bf676178795af26dd3d87fa69e5c14",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variantb4cd4ffb4dc8bf1c7f0a4b269f9ff14a2493c4c82368c5c430de5c2c33181314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb4e1630-5571-339c-569c-efa4fe54bb29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem functor_galoisConnection (X : C) :
    GaloisConnection (Sieve.functorPushforward F : Sieve X → Sieve (F.obj X))
      (Sieve.functorPullback F) := by
  intro R S
  constructor
  · intro hle X f hf
    apply hle
    refine ⟨X, f, 𝟙 _, hf, ?_⟩
    rw [id_comp]
  · rintro hle Y f ⟨X, g, h, hg, rfl⟩
    apply Sieve.downward_closed S
    exact hle g hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variantb4cd4ffb4dc8bf1c7f0a4b269f9ff14a2493c4c82368c5c430de5c2c33181314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functoriality/Variantb4cd4ffb4dc8bf1c7f0a4b269f9ff14a2493c4c82368c5c430de5c2c33181314.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0043ffdf5aed71e31b184125dfffae38423ff78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
