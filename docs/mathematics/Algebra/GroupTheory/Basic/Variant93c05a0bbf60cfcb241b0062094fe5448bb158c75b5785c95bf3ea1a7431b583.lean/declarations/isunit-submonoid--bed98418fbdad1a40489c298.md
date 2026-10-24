# IsUnit.submonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1bbf5ee77019fd950ac442ba2089c0855c74998da768cae29fa7ebc5a8fa26d",
  "kind": "def",
  "lexical_name": "IsUnit.submonoid",
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
  "slug": "isunit-submonoid--bed98418fbdad1a40489c298",
  "source": {
    "blob": "233d4d95593ffa28df7cfee8539ae936eed3092d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 357,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bed98418fbdad1a40489c298347b2eebc586302fc9f4a91556d46b240d5b75d6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1bbf5ee77019fd950ac442ba2089c0855c74998da768cae29fa7ebc5a8fa26d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsUnit.submonoid (M : Type*) [Monoid M] : Submonoid M where
  carrier := setOf IsUnit
  one_mem' := by simp only [isUnit_one, Set.mem_setOf_eq]
  mul_mem' := by
    intro a b ha hb
    rw [Set.mem_setOf_eq] at *
    exact IsUnit.mul ha hb

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant93c05a0bbf60cfcb241b0062094fe5448bb158c75b5785c95bf3ea1a7431b583.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `233d4d95593ffa28df7cfee8539ae936eed3092d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
