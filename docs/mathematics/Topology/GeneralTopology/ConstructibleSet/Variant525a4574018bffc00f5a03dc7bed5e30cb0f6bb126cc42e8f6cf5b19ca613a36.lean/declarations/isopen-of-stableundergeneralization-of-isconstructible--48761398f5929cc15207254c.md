# isOpen_of_stableUnderGeneralization_of_isConstructible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0eda074-c222-3a9e-9f27-8eb4a1fda2b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b64e5e98-292d-3374-8242-c763d0f50403",
  "kind": "lemma",
  "lexical_name": "isOpen_of_stableUnderGeneralization_of_isConstructible",
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
  "slug": "isopen-of-stableundergeneralization-of-isconstructible--48761398f5929cc15207254c",
  "source": {
    "blob": "6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 164,
    "path": "GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48761398f5929cc15207254c202733be6003d323b4d668a19516cd2a0e875567",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b64e5e98-292d-3374-8242-c763d0f50403`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isOpen_of_stableUnderGeneralization_of_isConstructible {R : Type*} [CommRing R]
    {s : Set (PrimeSpectrum R)} (hs : StableUnderGeneralization s) (hs' : IsConstructible s) :
    IsOpen s := by
  rw [← isClosed_compl_iff]
  exact isClosed_of_stableUnderSpecialization_of_isConstructible hs.compl hs'.compl

end PrimeSpectrum
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variant525a4574018bffc00f5a03dc7bed5e30cb0f6bb126cc42e8f6cf5b19ca613a36.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b9466bb19e60baeed81ae48ee38aadc3a0f4f3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
