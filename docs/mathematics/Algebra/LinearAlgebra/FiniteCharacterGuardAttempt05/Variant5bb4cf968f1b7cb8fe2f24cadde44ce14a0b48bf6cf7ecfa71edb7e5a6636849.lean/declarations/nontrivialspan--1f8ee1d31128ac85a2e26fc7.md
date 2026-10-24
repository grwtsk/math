# nontrivialSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:268452737e90a000de5b281ae39b0bd2f4f22e5f7e82e52b51a1fed9a66f8777",
  "kind": "def",
  "lexical_name": "nontrivialSpan",
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
  "slug": "nontrivialspan--1f8ee1d31128ac85a2e26fc7",
  "source": {
    "blob": "0e903af79a6e80ea1d08f9cad9eadaa99ba916af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 80,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f8ee1d31128ac85a2e26fc790550c972b17f1a9bbf3cc5cc4339cee9626688e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:268452737e90a000de5b281ae39b0bd2f4f22e5f7e82e52b51a1fed9a66f8777`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nontrivialSpan : Submodule ℂ (G → ℂ) :=
  Submodule.span ℂ (((⇑) : AddChar G ℂ → G → ℂ) '' {character | character ≠ 0})

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt05/Variant5bb4cf968f1b7cb8fe2f24cadde44ce14a0b48bf6cf7ecfa71edb7e5a6636849.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e903af79a6e80ea1d08f9cad9eadaa99ba916af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
