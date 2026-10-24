# compStarAlgHom'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:142917e5-7756-176c-b7cb-3fe9d54a8fc5",
  "kind": "theorem",
  "lexical_name": "compStarAlgHom'_comp",
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
  "slug": "compstaralghom-comp--ffe454868b5bb5cc6f368c3c",
  "source": {
    "blob": "ed496afea7b26b158050b3951e1d444c07ffa874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffe454868b5bb5cc6f368c3c7064788ed44278c11ba4e474ebe2095d67d38bd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:142917e5-7756-176c-b7cb-3fe9d54a8fc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compStarAlgHom'_comp (g : C(Y, Z)) (f : C(X, Y)) :
    compStarAlgHom' 𝕜 A (g.comp f) = (compStarAlgHom' 𝕜 A f).comp (compStarAlgHom' 𝕜 A g) :=
  StarAlgHom.ext fun _ => ContinuousMap.ext fun _ => rfl

end Precomposition

section Postcomposition

variable (X : Type*) {𝕜 A B C : Type*} [TopologicalSpace X] [CommSemiring 𝕜]
variable [TopologicalSpace A] [Semiring A] [IsTopologicalSemiring A] [Star A]
variable [ContinuousStar A] [Algebra 𝕜 A]
variable [TopologicalSpace B] [Semiring B] [IsTopologicalSemiring B] [Star B]
variable [ContinuousStar B] [Algebra 𝕜 B]
variable [TopologicalSpace C] [Semiring C] [IsTopologicalSemiring C] [Star C]
variable [ContinuousStar C] [Algebra 𝕜 C]

/-- Post-composition with a continuous star algebra homomorphism is a star algebra homomorphism
between spaces of continuous maps. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variant6c50c773f7922ce3cc6fc8b1c955342235673a505585971281eaed8988d2ac32.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed496afea7b26b158050b3951e1d444c07ffa874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
