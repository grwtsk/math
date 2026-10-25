# mk_le_of_countable_eventually_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f32e90c4-255e-9fdf-c092-d6f0f95fa8f8",
  "kind": "lemma",
  "lexical_name": "mk_le_of_countable_eventually_mem",
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
  "slug": "mk-le-of-countable-eventually-mem--cccacabc8668e7a62101dfb1",
  "source": {
    "blob": "2bdb8a056a6daeee96afdbe1bf27f22d7bf6d681",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cccacabc8668e7a62101dfb19889194f987680104ad42f5d8d716fb17d2b0e4c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f32e90c4-255e-9fdf-c092-d6f0f95fa8f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk_le_of_countable_eventually_mem {α : Type u} {ι : Type v} {a : Cardinal}
    [Countable ι] {f : ι → Set α} {l : Filter ι} [NeBot l] (ht : ∀ x, ∀ᶠ i in l, x ∈ f i)
    (h'f : ∀ i, #(f i) ≤ a) : #α ≤ a := by
  rw [← mk_univ]
  exact mk_subtype_le_of_countable_eventually_mem (l := l) (fun x _ ↦ ht x) h'f

/-- If a space is eventually covered by a countable family of sets, all with cardinality `a`,
then the cardinality of the space is also `a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant47588ae5be45041990c44280f60a07b78ba1dc1839c08329000a58624f934344.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bdb8a056a6daeee96afdbe1bf27f22d7bf6d681` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
