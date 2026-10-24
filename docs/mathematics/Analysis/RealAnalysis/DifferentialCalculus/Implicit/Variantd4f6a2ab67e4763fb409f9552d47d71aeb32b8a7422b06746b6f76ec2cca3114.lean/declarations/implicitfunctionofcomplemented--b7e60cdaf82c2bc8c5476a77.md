# implicitFunctionOfComplemented

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74b567f0f9e343fc1d58337bff813979b80436499a3fab11de1f4d6c2d98144c",
  "kind": "def",
  "lexical_name": "implicitFunctionOfComplemented",
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
  "slug": "implicitfunctionofcomplemented--b7e60cdaf82c2bc8c5476a77",
  "source": {
    "blob": "e01ca0232714d36187f0400ac0ac31d0f61b4340",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 350,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7e60cdaf82c2bc8c5476a77fb2c4a59d196d26244cf6eadb456c33b0f72cf65",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74b567f0f9e343fc1d58337bff813979b80436499a3fab11de1f4d6c2d98144c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def implicitFunctionOfComplemented (hf : HasStrictFDerivAt f f' a) (hf' : f'.range = ⊤)
    (hker : f'.ker.ClosedComplemented) : F → f'.ker → E :=
  (implicitFunctionDataOfComplemented f f' hf hf' hker).implicitFunction

end Defs

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd4f6a2ab67e4763fb409f9552d47d71aeb32b8a7422b06746b6f76ec2cca3114.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e01ca0232714d36187f0400ac0ac31d0f61b4340` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
