# Frequently.smallSets_of_forall_mem_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56bf3c32b5621fa192909af1ac80c4740ef27407",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2f3d9d0-3b4c-dd50-498f-a649a10a1e31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b947ed24-bcf2-90cd-d494-199ba42062c8",
  "kind": "theorem",
  "lexical_name": "Frequently.smallSets_of_forall_mem_basis",
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
  "slug": "frequently-smallsets-of-forall-mem-basis--59cd87d546f36e83f6518fb3",
  "source": {
    "blob": "56bf3c32b5621fa192909af1ac80c4740ef27407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 61,
    "path": "GRWTSK/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59cd87d546f36e83f6518fb35223010966fd8c1066ff6bc503b27f6675c4af0f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b947ed24-bcf2-90cd-d494-199ba42062c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Frequently.smallSets_of_forall_mem_basis {p : ι → Prop} {s : ι → Set α} {P : Set α → Prop}
    (h₁ : ∀ i, p i → P (s i)) (h₂ : HasBasis l p s) : ∃ᶠ t in l.smallSets, P t :=
  h₂.smallSets.frequently_iff.mpr fun _ hi => ⟨_, Subset.rfl, h₁ _ hi⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SmallSets/Variant0840bdd68031bb2b63587f28ca7914804a3270a12ed67b2ea419c365cfdccff1.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56bf3c32b5621fa192909af1ac80c4740ef27407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
