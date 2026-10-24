# smulAntidiagonal_mono_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "baee0432b79d152921febc5c33fcb55d9f87a116",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9eb7b588-e230-64d2-02d4-2b6bcd57ebff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbe444b7-9901-f9f0-7cd7-2b915ccd5080",
  "kind": "theorem",
  "lexical_name": "smulAntidiagonal_mono_left",
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
  "slug": "smulantidiagonal-mono-left--3b6ccfb30f5c076b5a9729b2",
  "source": {
    "blob": "baee0432b79d152921febc5c33fcb55d9f87a116",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b6ccfb30f5c076b5a9729b28116be70de4ce4616d2d996a78be15fab9802ac0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbe444b7-9901-f9f0-7cd7-2b915ccd5080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smulAntidiagonal_mono_left {s u : Set G} {t : Set P} (a : P) (h : u ⊆ s)
    (hst : (s.smulAntidiagonal t a).Finite) (hut : (u.smulAntidiagonal t a).Finite) :
    SMulAntidiagonal a hut ⊆ SMulAntidiagonal a hst :=
  Set.Finite.toFinset_mono <| Set.smulAntidiagonal_mono_left h

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SMulAntidiagonal/Variant2f4ab5e9fc7b61020ded87988f0d79c0edb9645ba9d97f61aa6e5bfd63a3466a.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baee0432b79d152921febc5c33fcb55d9f87a116` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
