# of_restrictScalars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c29cb08e-58f3-ce51-a6a0-c1ba25b6d5e8",
  "kind": "lemma",
  "lexical_name": "of_restrictScalars",
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
  "slug": "of-restrictscalars--1000ab4b3951b3fc8ead34bc",
  "source": {
    "blob": "a9eba332399ccf5d9ec775d2cfd02b4795105945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 424,
    "path": "GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1000ab4b3951b3fc8ead34bcfcf030dc0dd1a2a4afd28a297a1079e120780eb7",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c29cb08e-58f3-ce51-a6a0-c1ba25b6d5e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_restrictScalars [FormallyUnramified R A] [FormallySmooth R B] :
    FormallySmooth A B := by
  refine iff_comp_surjective.mpr fun C _ _ I hI f ↦ ?_
  algebraize [(algebraMap A C).comp (algebraMap R A)]
  obtain ⟨g, hg⟩ := Algebra.FormallySmooth.comp_surjective _ _ I hI (f.restrictScalars R)
  suffices g.comp (IsScalarTower.toAlgHom R A B) = IsScalarTower.toAlgHom R A C from
    ⟨{ __ := g, commutes' x := congr($this x) }, AlgHom.ext fun x ↦ congr($hg x)⟩
  apply Algebra.FormallyUnramified.comp_injective _ hI
  rw [← AlgHom.comp_assoc, hg]
  exact AlgHom.ext f.commutes

end Comp

section surjective

variable {R : Type*} [CommRing R]
variable {P A : Type*} [CommRing A] [Algebra R A] [CommRing P] [Algebra R P]
variable (f : P →ₐ[R] A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant83407ce0af501b136e39e6ce42728da79087f98131dac00581cf3cdcf92526e6.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9eba332399ccf5d9ec775d2cfd02b4795105945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
