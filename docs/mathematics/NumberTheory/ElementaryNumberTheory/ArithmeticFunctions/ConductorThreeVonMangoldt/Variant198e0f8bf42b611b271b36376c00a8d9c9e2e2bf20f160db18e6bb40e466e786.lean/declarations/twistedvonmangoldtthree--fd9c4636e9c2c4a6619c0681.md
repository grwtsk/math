# twistedVonMangoldtThree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab86a6965d439e4a6e91fba8ffd9afde6661b8c3fa9b09be1dbef9e6c6fdd97b",
  "kind": "def",
  "lexical_name": "twistedVonMangoldtThree",
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
  "slug": "twistedvonmangoldtthree--fd9c4636e9c2c4a6619c0681",
  "source": {
    "blob": "3aaf4b6d518f3c2a509f85a52b6558a21a884f82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 32,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd9c4636e9c2c4a6619c06818185e53779d7570fb3998f88b55e7a4420fd4835",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab86a6965d439e4a6e91fba8ffd9afde6661b8c3fa9b09be1dbef9e6c6fdd97b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twistedVonMangoldtThree (n : ℕ) : ℝ :=
  (conductorThreeIntegerValue n : ℝ) * ArithmeticFunction.vonMangoldt n

/-- The exact finite sum `∑_{0 ≤ n ≤ x} χ₃(n) Λ(n)`.  The `n = 0`
term vanishes, so `range (x + 1)` represents the conventional `1 ≤ n ≤ x`
sum without a boundary conversion. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ConductorThreeVonMangoldt/Variant198e0f8bf42b611b271b36376c00a8d9c9e2e2bf20f160db18e6bb40e466e786.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3aaf4b6d518f3c2a509f85a52b6558a21a884f82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
