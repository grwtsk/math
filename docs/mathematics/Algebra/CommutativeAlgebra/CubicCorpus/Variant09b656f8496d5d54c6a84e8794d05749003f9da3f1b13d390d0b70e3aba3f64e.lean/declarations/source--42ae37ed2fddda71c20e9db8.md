# source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0f051d1e3f4cd559714104600391f62fc5eead0d67c5bc7a10fc62717f25c21",
  "kind": "def",
  "lexical_name": "source",
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
  "slug": "source--42ae37ed2fddda71c20e9db8",
  "source": {
    "blob": "7612cddddf16b169388e7aaf1e3af3f7ccaa2fc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 17,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42ae37ed2fddda71c20e9db8f13dc112379aeb342aacae77984964416c59b4db",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0f051d1e3f4cd559714104600391f62fc5eead0d67c5bc7a10fc62717f25c21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def source
    (ordinal : Nat)
    (name : String)
    (name_nonempty : name ≠ "")
    (kind : CorpusDeclarationKind)
    (digest : String)
    (digest_valid : ({ value := digest } : Digest).Valid) :
    CorpusDeclarationAddress where
  corpus := ideasCorpus
  moduleOrdinal := 31
  modulePath := "Analysis/Cubic.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "17a42547a2d8080c9120ac164c3b739104131198c0b37989d1a1ab11d026650e"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide
  declarationOrdinal := ordinal
  declarationName := name
  declarationName_nonempty := name_nonempty
  declarationKind := kind
  declarationDigest := { value := digest }
  declarationDigest_valid := digest_valid

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7612cddddf16b169388e7aaf1e3af3f7ccaa2fc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
