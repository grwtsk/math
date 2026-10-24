# Tendsto.atBot_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed493a271055998212b9ce43869aa4df770abd45",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6d0ad62-3165-7eb5-8a3a-fb48a05123ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82c33702-b962-c0af-43c5-f0e01328c77a",
  "kind": "theorem",
  "lexical_name": "Tendsto.atBot_pow",
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
  "slug": "tendsto-atbot-pow--136e4a074985fd20836c713f",
  "source": {
    "blob": "ed493a271055998212b9ce43869aa4df770abd45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:136e4a074985fd20836c713f4944b5caa6843348f7d87012008e37b56c25650d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82c33702-b962-c0af-43c5-f0e01328c77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Tendsto.atBot_pow (hf : Tendsto f l atBot) {n : ℕ} (hn : 0 < n) :
    Tendsto (fun x => f x ^ n) l atBot :=
  Tendsto.atTop_pow (M := Mᵒᵈ) hf hn

end OrderedCommMonoid

section OrderedCancelCommMonoid

variable [CommMonoid M] [PartialOrder M] [IsOrderedCancelMonoid M] {l : Filter α} {f g : α → M}

/-- In an ordered cancellative multiplicative monoid, if `C * f x → +∞`, then `f x → +∞`.

Earlier, this name was used for a similar lemma about ordered rings,
which is now called `Filter.Tendsto.atTop_of_const_mul₀`. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variant00c95b6ed3d1061e61a95f741391b6c9ac12faf43b24bace3e81aa699a9087ed.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed493a271055998212b9ce43869aa4df770abd45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
