# ofIsHomeomorphToEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:efa6a37306f1cc05ea2dbb1860cb1fd7cf7d0fd735190c5178ec59102f7d034d",
  "kind": "def",
  "lexical_name": "ofIsHomeomorphToEquiv",
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
  "slug": "ofishomeomorphtoequiv--ce599070f353a7045a293e9f",
  "source": {
    "blob": "5679fab1dc08ab37d499cd0526f2d09e1bf09e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce599070f353a7045a293e9f8c2c3611abeaa5ba43ad9821019d8bec5cd742da",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:efa6a37306f1cc05ea2dbb1860cb1fd7cf7d0fd735190c5178ec59102f7d034d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofIsHomeomorphToEquiv (f : PartialEquiv X Y) (h : IsHomeomorph (f.toEquiv)) :
    PartialHomeomorph X Y where
  toPartialEquiv := f
  continuousOn_toFun := by
    rw [continuousOn_iff_continuous_domRestrict,
      ← continuous_codRestrict_iff (s := f.target) (by simp)]
    exact h.continuous
  continuousOn_invFun := by
    rw [continuousOn_iff_continuous_domRestrict,
      ← continuous_codRestrict_iff (s := f.source) (by simp)]
    exact ((Equiv.isHomeomorph_iff _).1 h).2

end PartialHomeomorph

/-!
## Embeddings
-/

namespace Topology.IsEmbedding

variable (f : X → Y) (h : IsEmbedding f)

/-- An embedding of `X` into `Y`, with `X` nonempty, defines a partial homeomorphism
whose source is all of `X`. The converse is also true; see `PartialHomeomorph.isEmbedding`. -/
@[simps! -fullyApplied apply source target]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant34679f6be4a475b496f51f61ec9d646211ff8a9b759c96550617e2e06020fdeb.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5679fab1dc08ab37d499cd0526f2d09e1bf09e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
