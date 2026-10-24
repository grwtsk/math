# Pi.enorm_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:414a742d-dc54-c73e-69aa-dfa5aad6190e",
  "kind": "lemma",
  "lexical_name": "Pi.enorm_single",
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
  "slug": "pi-enorm-single--42e7bf89553663ec40264d01",
  "source": {
    "blob": "1cce627d40eb4cbdb8d6d7cce9fb9c3488d8c4c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 414,
    "path": "GRWTSK/Analysis/Constructions/Variant782b02cf74f10290eda79a729f9e0f6cc7363ede35c31948e77850c9b49bc447.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42e7bf89553663ec40264d01addba9891b8fddaab9d7ac960680f0cfc3cb2767",
  "verification": {
    "reference": "docs/verification/Analysis/Constructions/Variant782b02cf74f10290eda79a729f9e0f6cc7363ede35c31948e77850c9b49bc447.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:414a742d-dc54-c73e-69aa-dfa5aad6190e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Pi.enorm_single [DecidableEq ι] [∀ i, NormedAddCommGroup (G i)] {i : ι} (y : G i) :
    ‖Pi.single i y‖ₑ = ‖y‖ₑ := by simp [enorm, Pi.nnnorm_single]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Constructions/Variant782b02cf74f10290eda79a729f9e0f6cc7363ede35c31948e77850c9b49bc447.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Constructions/Variant782b02cf74f10290eda79a729f9e0f6cc7363ede35c31948e77850c9b49bc447.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cce627d40eb4cbdb8d6d7cce9fb9c3488d8c4c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
