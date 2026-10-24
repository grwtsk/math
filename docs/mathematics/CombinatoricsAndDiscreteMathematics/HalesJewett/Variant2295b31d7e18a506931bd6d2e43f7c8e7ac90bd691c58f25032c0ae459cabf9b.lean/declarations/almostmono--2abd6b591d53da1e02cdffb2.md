# AlmostMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:835dcd0f9714b6fd2b365e3b9c65936ac6c97451443b9397f2a68fa2e60b6929",
  "kind": "structure",
  "lexical_name": "AlmostMono",
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
  "slug": "almostmono--2abd6b591d53da1e02cdffb2",
  "source": {
    "blob": "a9d6da96a2a19c801bb472d532b5a9e30d387bac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2abd6b591d53da1e02cdffb2496900a416025c431bd2922b99c55eaa5503cb08",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:835dcd0f9714b6fd2b365e3b9c65936ac6c97451443b9397f2a68fa2e60b6929`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AlmostMono {α ι κ : Type*} (C : (ι → Option α) → κ) where
  /-- The underlying line of an almost monochromatic line, where the coordinate dimension `α` is
  extended by an additional symbol `none`, thought to be marking the endpoint of the line. -/
  line : Line (Option α) ι
  /-- The main color of an almost monochromatic line. -/
  color : κ
  /-- The proposition that the underlying line of an almost monochromatic line assumes its main
  color except possibly at the endpoints. -/
  has_color : ∀ x : α, C (line (some x)) = color
#align combinatorics.line.almost_mono Combinatorics.Line.AlmostMono

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant2295b31d7e18a506931bd6d2e43f7c8e7ac90bd691c58f25032c0ae459cabf9b.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d6da96a2a19c801bb472d532b5a9e30d387bac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
