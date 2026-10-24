# noncommPiCoprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:955d2fc4c60fc3afd5a017aa959c8b2b75342ea16357115cfc88fffd3a60993f",
  "kind": "def",
  "lexical_name": "noncommPiCoprod",
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
  "slug": "noncommpicoprod--8cb5d8db6fe7e8a361aa372c",
  "source": {
    "blob": "bec1f196e3583436e814144165a09a420e500458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 110,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cb5d8db6fe7e8a361aa372c9a121349b1f7eba6da615b79b1cb821cc1f72b88",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:955d2fc4c60fc3afd5a017aa959c8b2b75342ea16357115cfc88fffd3a60993f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def noncommPiCoprod : (∀ i : ι, N i) →* M
    where
  toFun f := Finset.univ.noncommProd (fun i => ϕ i (f i)) fun i _ j _ h => hcomm h _ _
  map_one' := by
    apply (Finset.noncommProd_eq_pow_card _ _ _ _ _).trans (one_pow _)
    simp
  map_mul' f g := by
    classical
    simp only
    convert @Finset.noncommProd_mul_distrib _ _ _ _ (fun i => ϕ i (f i)) (fun i => ϕ i (g i)) _ _ _
    · exact map_mul _ _ _
    · rintro i - j - h
      exact hcomm h _ _
#align monoid_hom.noncomm_pi_coprod MonoidHom.noncommPiCoprod
#align add_monoid_hom.noncomm_pi_coprod AddMonoidHom.noncommPiCoprod

variable {hcomm}

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/NoncommPiCoprod/Variant12134cf686fb3fe9f4b50162285bf1f2d65d505c9ccc6fedb9816cac7eaae84c.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec1f196e3583436e814144165a09a420e500458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
