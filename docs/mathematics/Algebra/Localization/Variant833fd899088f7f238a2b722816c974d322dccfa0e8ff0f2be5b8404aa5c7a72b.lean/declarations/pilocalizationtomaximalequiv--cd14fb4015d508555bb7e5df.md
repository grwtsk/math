# piLocalizationToMaximalEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:805eca792fbf5402dc983b1f43677385281c04e66541f55b7ff268e7ec52ec7f",
  "kind": "def",
  "lexical_name": "piLocalizationToMaximalEquiv",
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
  "slug": "pilocalizationtomaximalequiv--cd14fb4015d508555bb7e5df",
  "source": {
    "blob": "f0f42fb2b767cda39bab581085ef117a8e0a895d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 181,
    "path": "GRWTSK/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd14fb4015d508555bb7e5dfa8078106b4897b608ab77ee0971784431c7924eb",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:805eca792fbf5402dc983b1f43677385281c04e66541f55b7ff268e7ec52ec7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piLocalizationToMaximalEquiv (h : ∀ I : Ideal R, I.IsPrime → I.IsMaximal) :
    PiLocalization R ≃+* MaximalSpectrum.PiLocalization R where
  __ := piLocalizationToMaximal R
  invFun := Pi.ringHom fun I ↦ Pi.evalRingHom _ (⟨_, h _ I.2⟩ : MaximalSpectrum R)
  left_inv _ := rfl
  right_inv _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant833fd899088f7f238a2b722816c974d322dccfa0e8ff0f2be5b8404aa5c7a72b.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0f42fb2b767cda39bab581085ef117a8e0a895d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
