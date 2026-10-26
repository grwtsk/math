# accepted_property_transfer

<!-- VERIFICATION AMENDMENT d4083a002f058bdd3b9bf4bd731b1b03bbcf13ac31e3ec7dc4e1ca0ee549f662 -->
**Later verification observation:** source compilation exited zero; the declared axiom policy was rejected. The radius-three graph is structurally complete. **S₃ remains unavailable.** [Exact scope, all compiler roots and evidence](../verification-update-d4083a002f058bdd3b9b.md). The original issuance and its metadata below retain their historical scope.
<!-- END VERIFICATION AMENDMENT -->

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc3903d4c63e8cfeaf2eb8a51626350763aa3e0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/IdentityTypes/Transport/LiteralInputEqualityTransport.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68afe737-bb97-d8ac-dd9c-1e852406ccad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f065ced-f5fd-0e06-0c0a-c22ca0072d4d",
  "kind": "theorem",
  "lexical_name": "accepted_property_transfer",
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
  "slug": "accepted-property-transfer--0519fffdcd2ec2ecb0ef4981",
  "source": {
    "blob": "fc3903d4c63e8cfeaf2eb8a51626350763aa3e0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/IdentityTypes/Transport/LiteralInputEqualityTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0519fffdcd2ec2ecb0ef4981e3f96b738e294d956b1f10bcf98fa9753d5247da",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/IdentityTypes/Transport/LiteralInputEqualityTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f065ced-f5fd-0e06-0c0a-c22ca0072d4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem accepted_property_transfer {frozen actual : Inputs} (predicate : Inputs → Prop)
    (proof : predicate frozen) (accepted : check frozen actual = true) : predicate actual := by
  exact (check_iff _ _).mp accepted ▸ proof

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/IdentityTypes/Transport/LiteralInputEqualityTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/IdentityTypes/Transport/LiteralInputEqualityTransport.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc3903d4c63e8cfeaf2eb8a51626350763aa3e0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
