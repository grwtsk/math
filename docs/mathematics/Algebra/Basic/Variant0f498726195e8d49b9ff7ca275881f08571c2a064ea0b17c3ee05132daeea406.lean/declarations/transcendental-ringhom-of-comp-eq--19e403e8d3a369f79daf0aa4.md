# Transcendental.ringHom_of_comp_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45380c955a5dc86e95dd2a81d47980064507f960",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f498726195e8d49b9ff7ca275881f08571c2a064ea0b17c3ee05132daeea406.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b902da6-2fe3-c340-7689-364281902e66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:420635b4-804b-e70c-7356-c1e791e60cf5",
  "kind": "theorem",
  "lexical_name": "Transcendental.ringHom_of_comp_eq",
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
  "slug": "transcendental-ringhom-of-comp-eq--19e403e8d3a369f79daf0aa4",
  "source": {
    "blob": "45380c955a5dc86e95dd2a81d47980064507f960",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 252,
    "path": "GRWTSK/Algebra/Basic/Variant0f498726195e8d49b9ff7ca275881f08571c2a064ea0b17c3ee05132daeea406.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19e403e8d3a369f79daf0aa4b7338bfce29dd0447934b6bb49032d9b349c5333",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant0f498726195e8d49b9ff7ca275881f08571c2a064ea0b17c3ee05132daeea406.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:420635b4-804b-e70c-7356-c1e791e60cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Transcendental.ringHom_of_comp_eq (H : Transcendental R a)
    (hf : Function.Surjective f) (hg : Function.Injective g)
    (h : RingHom.comp (algebraMap S B) f = RingHom.comp g (algebraMap R A)) :
    Transcendental S (g a) := fun halg ↦ H (halg.of_ringHom_of_comp_eq f g hf hg h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant0f498726195e8d49b9ff7ca275881f08571c2a064ea0b17c3ee05132daeea406.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant0f498726195e8d49b9ff7ca275881f08571c2a064ea0b17c3ee05132daeea406.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45380c955a5dc86e95dd2a81d47980064507f960` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
