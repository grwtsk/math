# applyMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5a3f31ae4eeb31166f759af37cdc0fa4351a8ec4134f43d5721042ca9c1b19b",
  "kind": "instance",
  "lexical_name": "applyMulAction",
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
  "slug": "applymulaction--4b4fe67e957c2c0591bdbcea",
  "source": {
    "blob": "c481ae021e1fe86c8625c022685092912e8d8493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 88,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b4fe67e957c2c0591bdbceabda326ee65614e58c6293dc986661de5722c823b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5a3f31ae4eeb31166f759af37cdc0fa4351a8ec4134f43d5721042ca9c1b19b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance applyMulAction (α : Type*) : MulAction (Perm α) α where
  smul f a := f a
  one_smul _ := rfl
  mul_smul _ _ _ := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c481ae021e1fe86c8625c022685092912e8d8493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
