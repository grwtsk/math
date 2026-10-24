# comp_toRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:006cff5e-fdcc-bb12-f05a-7da9eda67a4d",
  "kind": "lemma",
  "lexical_name": "comp_toRingHom",
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
  "slug": "comp-toringhom--2b8b97d9326f5f216c89da1d",
  "source": {
    "blob": "b2e69c13afab0939b8b89c1950a7496626ba17df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 228,
    "path": "GRWTSK/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b8b97d9326f5f216c89da1de2858058cdb0a5e57ffbf9cc0cc7a50128d25bb1",
  "verification": {
    "reference": "docs/verification/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:006cff5e-fdcc-bb12-f05a-7da9eda67a4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma comp_toRingHom (g : DPMorphism hJ hK) (f : DPMorphism hI hJ) :
    (g.comp f).toRingHom = g.toRingHom.comp f.toRingHom := rfl

end DPMorphism

section Uniqueness

variable {A B : Type*} [CommSemiring A] [CommSemiring B] {I : Ideal A} {J : Ideal B}
    (hI hI' : DividedPowers I) (hJ : DividedPowers J) {f : A →+* B}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2e69c13afab0939b8b89c1950a7496626ba17df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
