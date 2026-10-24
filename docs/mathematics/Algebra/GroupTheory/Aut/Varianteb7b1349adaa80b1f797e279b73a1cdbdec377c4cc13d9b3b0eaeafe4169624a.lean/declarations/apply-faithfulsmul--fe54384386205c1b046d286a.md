# apply_faithfulSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7795517c0ce9232d59f4283b72bf2fcc9785915bdd3f2245a20e0637ce548bd1",
  "kind": "instance",
  "lexical_name": "apply_faithfulSMul",
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
  "slug": "apply-faithfulsmul--fe54384386205c1b046d286a",
  "source": {
    "blob": "cd89c3a960f2e1dc0f7dbf8007d173e2aac259d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 258,
    "path": "GRWTSK/Algebra/GroupTheory/Aut/Varianteb7b1349adaa80b1f797e279b73a1cdbdec377c4cc13d9b3b0eaeafe4169624a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe54384386205c1b046d286a1e39df255b24af71d084d4c0f20c09ba9ced7afc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Aut/Varianteb7b1349adaa80b1f797e279b73a1cdbdec377c4cc13d9b3b0eaeafe4169624a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7795517c0ce9232d59f4283b72bf2fcc9785915bdd3f2245a20e0637ce548bd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance apply_faithfulSMul {A} [AddMonoid A] : FaithfulSMul (AddAut A) A :=
  ⟨fun h => AddEquiv.ext h ⟩
#align add_aut.apply_has_faithful_smul AddAut.apply_faithfulSMul

/-- Additive group conjugation, `AddAut.conj g h = g + h - g`, as an additive monoid
homomorphism mapping addition in `G` into multiplication in the automorphism group `AddAut G`
(written additively in order to define the map). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Aut/Varianteb7b1349adaa80b1f797e279b73a1cdbdec377c4cc13d9b3b0eaeafe4169624a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Aut/Varianteb7b1349adaa80b1f797e279b73a1cdbdec377c4cc13d9b3b0eaeafe4169624a.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd89c3a960f2e1dc0f7dbf8007d173e2aac259d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
