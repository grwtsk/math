# smul_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cb2021723b128e75748f0c58e85674d52f3c640",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47cb574d-7ccb-8a4a-9eb6-87fd5cffd4d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eeb5e8e8-e0aa-1596-eb28-2ac3b0f061f1",
  "kind": "theorem",
  "lexical_name": "smul_bijective",
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
  "slug": "smul-bijective--bd45f34625dee8ad8f8416bb",
  "source": {
    "blob": "1cb2021723b128e75748f0c58e85674d52f3c640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 113,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd45f34625dee8ad8f8416bb647f0fecbb25567c73d587f5e8a2c4650e893eb1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeb5e8e8-e0aa-1596-eb28-2ac3b0f061f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_bijective {m : α} (hm : IsUnit m) :
    Function.Bijective (fun (a : β) ↦ m • a) := by
  lift m to αˣ using hm
  exact MulAction.bijective m

@[deprecated (since := "2025-03-03")]
alias _root_.AddAction.vadd_bijective_of_is_addUnit := IsAddUnit.vadd_bijective

@[to_additive existing, deprecated (since := "2025-03-03")]
alias _root_.MulAction.smul_bijective_of_is_unit := IsUnit.smul_bijective

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant983e07f99af7d3b2e0873eef7644d898bfdfac85cfc27cf082648ae799448bff.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cb2021723b128e75748f0c58e85674d52f3c640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
