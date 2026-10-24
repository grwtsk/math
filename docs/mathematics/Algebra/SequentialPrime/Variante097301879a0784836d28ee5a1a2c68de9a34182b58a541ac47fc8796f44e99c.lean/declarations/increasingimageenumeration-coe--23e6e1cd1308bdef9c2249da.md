# increasingImageEnumeration_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7644e8659184af2ba98eb2e49d7d50d35bcd1d84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c68b3497-213b-2fae-1354-3076fc9b2b65",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f1f4845-8447-898d-9616-0b208c09bd34",
  "kind": "theorem",
  "lexical_name": "increasingImageEnumeration_coe",
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
  "slug": "increasingimageenumeration-coe--23e6e1cd1308bdef9c2249da",
  "source": {
    "blob": "7644e8659184af2ba98eb2e49d7d50d35bcd1d84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 417,
    "path": "GRWTSK/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23e6e1cd1308bdef9c2249da340d9a476e7aa030f4fffac6f4bc286cc1869888",
  "verification": {
    "reference": "docs/verification/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f1f4845-8447-898d-9616-0b208c09bd34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem increasingImageEnumeration_coe (index : Nat) :
    (increasingImageEnumeration index : Nat) =
      Nat.nth (fun value => value ∈ AddressImage) index := by
  have equality := congrFun
    (Nat.nth_eq_orderIsoOfNat
      (p := fun value => value ∈ AddressImage) addressImage_infinite) index
  exact equality.symm

/-- The increasing image enumeration, decoded back to exact carrier data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SequentialPrime/Variante097301879a0784836d28ee5a1a2c68de9a34182b58a541ac47fc8796f44e99c.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7644e8659184af2ba98eb2e49d7d50d35bcd1d84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
