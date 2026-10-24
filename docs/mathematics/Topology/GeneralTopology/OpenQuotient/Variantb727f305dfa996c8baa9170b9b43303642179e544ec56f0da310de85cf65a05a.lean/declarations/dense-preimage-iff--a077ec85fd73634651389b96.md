# dense_preimage_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8958de7bf95ae121a51622e922c2ac1216728348",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:241532a4-adec-c9e0-1ece-639b3a5a7315",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87389edc-0a43-eb9a-bd72-fd206cafb4fc",
  "kind": "theorem",
  "lexical_name": "dense_preimage_iff",
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
  "slug": "dense-preimage-iff--a077ec85fd73634651389b96",
  "source": {
    "blob": "8958de7bf95ae121a51622e922c2ac1216728348",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 68,
    "path": "GRWTSK/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a077ec85fd73634651389b967a5e74cecececa5b454df0d193e32e2cc1d54b82",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87389edc-0a43-eb9a-bd72-fd206cafb4fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem dense_preimage_iff (h : IsOpenQuotientMap f) {s : Set Y} : Dense (f ⁻¹' s) ↔ Dense s :=
  ⟨fun hs ↦ h.surjective.denseRange.dense_of_mapsTo h.continuous hs (mapsTo_preimage _ _),
    fun hs ↦ hs.preimage h.isOpenMap⟩

end IsOpenQuotientMap

section Subquotient

variable {A B C D : Type*}
variable [TopologicalSpace A] [TopologicalSpace B] [TopologicalSpace C] [TopologicalSpace D]
variable (f : A → B) (g : C → D) (p : A → C) (q : B → D)

omit [TopologicalSpace C] in
/--
Given the following diagram with `f` inducing, `p` surjective,
`q` an open quotient map, and `g` injective. Suppose the image of `A` in `B` is stable
under the equivalence mod `q`, then the coinduced topology on `C` (from `A`)
coincides with the induced topology (from `D`).
```
A -f→ B
∣     ∣
p     q
↓     ↓
C -g→ D
```

A typical application is when `K ≤ H` are subgroups of `G`, then the quotient topology on `H/K`
is also the subspace topology from `G/K`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenQuotient/Variantb727f305dfa996c8baa9170b9b43303642179e544ec56f0da310de85cf65a05a.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8958de7bf95ae121a51622e922c2ac1216728348` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
