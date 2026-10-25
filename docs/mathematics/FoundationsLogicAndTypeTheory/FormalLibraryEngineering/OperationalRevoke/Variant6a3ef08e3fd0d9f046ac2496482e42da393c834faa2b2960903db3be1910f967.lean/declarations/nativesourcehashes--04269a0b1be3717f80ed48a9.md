# nativeSourceHashes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8774503e1ddd50912a901a991350fd6a2220d1fcc3d471b9906d82799c286d2c",
  "kind": "def",
  "lexical_name": "nativeSourceHashes",
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
  "slug": "nativesourcehashes--04269a0b1be3717f80ed48a9",
  "source": {
    "blob": "3d9b11fd270b6d951d40194a39c1da277a0708be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04269a0b1be3717f80ed48a90c97675e296c2eb5a20082bca05b658d06cc6f12",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8774503e1ddd50912a901a991350fd6a2220d1fcc3d471b9906d82799c286d2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def nativeSourceHashes : List (String × String) :=
  [("src/construct/operational.cpp",
    "f6fab17928338b5bd1968faf597ce86269db83db3f52d82dabcb2229c0203bdf"),
   ("include/construct/operational.hpp",
    "bc16991bc841c5f42d97626119f208206c1e0a95ad5586e0437cbaacd9dfa000"),
   ("tools/repo/construct_effect_ledger_vectors.py",
    "a71df14c3ddcba98f25a794126359fac086415db421840e1314479bcf18872cf"),
   ("tools/repo/construct_delegation_ledger_vectors.py",
    "846e517bd7ccd404515418a32122a047d239affa722f954b81473ac030974518"),
   ("tools/repo/fixtures/construct-effect-ledger-v1.json",
    "73bbe4cf9f8a79f19e3b0520e4e8546bf02b66dd6c8adb1378a531a8f4b778b3"),
   ("tools/repo/fixtures/construct-delegation-ledger-v1.json",
    "a58e7b0e4b4b094fbcc10ef46e4ae54754adf85fedd51167196b8784a01b385e"),
   ("docs/contracts/construct-operational-v1-candidate.json",
    "67f087e929b80e483efa4832beb41f34cc9bed09a84422bdd842cb1aa612f1e9")]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9b11fd270b6d951d40194a39c1da277a0708be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
