# RepresentationFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65dde53c878d2c0c8bb75eb3465241a3b0dde7046e7fc7c14740c9f3e78560c2",
  "kind": "structure",
  "lexical_name": "RepresentationFamily",
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
  "slug": "representationfamily--c1e8e838e91a608d62b98bc7",
  "source": {
    "blob": "cdf384f1f1c00a96b5e33af2d5564e40ed34a9df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 83,
    "path": "GRWTSK/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1e8e838e91a608d62b98bc7939f30c1a41b5b79c7ac843b96875e2a9459a4ae",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65dde53c878d2c0c8bb75eb3465241a3b0dde7046e7fc7c14740c9f3e78560c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RepresentationFamily
    (Representation : Type uP) where
  datum : Representation → RepresentationDatum.{uRG, uRN}
  Source : Int → Type uS
  Target : Int → Type uT
  map :
    Representation →
      (degree : Int) → Source degree → Target degree
  InducedBy :
    (representation : Representation) →
      (MonoidAlgebra ℤ (datum representation).Group →+*
        (datum representation).NumberRing) →
      ((degree : Int) → Source degree → Target degree) → Prop
  induced_by_groupRingMap :
    ∀ representation,
      InducedBy representation
        (datum representation).groupRingMap
        (map representation)

namespace RepresentationFamily

/--
The realization family as a representation-parameterized comparison.  No
existential hides the selected representation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Comparison/Variant80c6b00d0707298074c8727849b4ad410ded1f74c00306498dec4ec16355273c.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdf384f1f1c00a96b5e33af2d5564e40ed34a9df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
