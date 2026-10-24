# DynkinSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a87ab954facc58e8d398084edcf933181ee3af49da39c90505e2a2c953b4028",
  "kind": "structure",
  "lexical_name": "DynkinSystem",
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
  "slug": "dynkinsystem--5cf77864049f78ec1715e4d0",
  "source": {
    "blob": "0598ddc4637f21d30b49d8ab119f4250b8c28da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 554,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cf77864049f78ec1715e4d0e2a206a236e15a7fb40394f36c23ed9cfadaeccc",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a87ab954facc58e8d398084edcf933181ee3af49da39c90505e2a2c953b4028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DynkinSystem (α : Type*) where
  /-- Predicate saying that a given set is contained in the Dynkin system. -/
  Has : Set α → Prop
  /-- A Dynkin system contains the empty set. -/
  has_empty : Has ∅
  /-- A Dynkin system is closed under complementation. -/
  has_compl : ∀ {a}, Has a → Has aᶜ
  /-- A Dynkin system is closed under countable union of pairwise disjoint sets. Use a more general
  `MeasurableSpace.DynkinSystem.has_iUnion` instead.-/
  has_iUnion_nat : ∀ {f : ℕ → Set α}, Pairwise (Disjoint on f) → (∀ i, Has (f i)) → Has (⋃ i, f i)
#align measurable_space.dynkin_system MeasurableSpace.DynkinSystem

namespace DynkinSystem

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0598ddc4637f21d30b49d8ab119f4250b8c28da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
