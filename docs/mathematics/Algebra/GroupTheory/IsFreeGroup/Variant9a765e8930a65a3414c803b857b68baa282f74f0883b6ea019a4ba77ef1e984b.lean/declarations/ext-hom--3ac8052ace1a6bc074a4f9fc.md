# ext_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b97535e3831870dc0b33cd721fb88de6456633d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:366a4c59-6f75-7c3f-4607-cc46206a62ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f36c8fcb-1512-44c1-5b71-6904d120ac0d",
  "kind": "theorem",
  "lexical_name": "ext_hom",
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
  "slug": "ext-hom--3ac8052ace1a6bc074a4f9fc",
  "source": {
    "blob": "b97535e3831870dc0b33cd721fb88de6456633d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 271,
    "path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ac8052ace1a6bc074a4f9fc121ff900916b61135b866e6b71bb3291dd7747d0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f36c8fcb-1512-44c1-5b71-6904d120ac0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_hom ⦃f g : G →* H⦄ (h : ∀ a : Generators G, f (of a) = g (of a)) : f = g :=
  lift.symm.injective (funext h)

/-- The universal property of a free group: A function from the generators of `G` to another
group extends in a unique way to a homomorphism from `G`.

Note that since `IsFreeGroup.lift` is expressed as a bijection, it already
expresses the universal property. -/
@[to_additive
/-- The universal property of an additive free group: A function from the generators of `G` to
another additive group extends in a unique way to a homomorphism from `G`.

Note that since `IsFreeAddGroup.lift` is expressed as a bijection, it already
expresses the universal property. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variant9a765e8930a65a3414c803b857b68baa282f74f0883b6ea019a4ba77ef1e984b.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b97535e3831870dc0b33cd721fb88de6456633d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
