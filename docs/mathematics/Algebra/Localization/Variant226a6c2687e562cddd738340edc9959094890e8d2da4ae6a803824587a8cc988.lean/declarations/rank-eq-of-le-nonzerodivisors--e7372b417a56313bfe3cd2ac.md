# rank_eq_of_le_nonZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa0ea85fb29c44bcfbec96df2549c6fcb712d338",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef7df7cf-a944-a6d8-b501-aafbc4725778",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9c748277-6076-96c8-9c57-ce63cb54488b",
  "kind": "theorem",
  "lexical_name": "rank_eq_of_le_nonZeroDivisors",
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
  "slug": "rank-eq-of-le-nonzerodivisors--e7372b417a56313bfe3cd2ac",
  "source": {
    "blob": "fa0ea85fb29c44bcfbec96df2549c6fcb712d338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7372b417a56313bfe3cd2ac5648271cb7d455f27ff3e72a3e36041ae162519a",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c748277-6076-96c8-9c57-ce63cb54488b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rank_eq_of_le_nonZeroDivisors {P : Type uM} [AddCommGroup P] [Module R P] [Module T P]
    [IsScalarTower R T P] {g : M →ₗ[R] P} (bc : IsBaseChange T g) :
    Module.rank T P = Module.rank R M := by
  simpa using lift_rank_eq_of_le_nonZeroDivisors S f hp hpT bc

end

variable {p} {T : Type uT} [CommRing T] [NoZeroDivisors T] [Algebra R T] [FaithfulSMul R T]
  {P : Type uP} [AddCommGroup P] [Module R P] [Module T P] [IsScalarTower R T P]
  {g : M →ₗ[R] P} (bc : IsBaseChange T g)

include bc
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa0ea85fb29c44bcfbec96df2549c6fcb712d338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
