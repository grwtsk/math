# reduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0f0af089805086e7cc9f4bb2faae8bd7b264f52a5e47da21a394e002c389ed3",
  "kind": "def",
  "lexical_name": "reduction",
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
  "slug": "reduction--b3cdacd1c7fad4d5ffa40ae5",
  "source": {
    "blob": "34bf5987e231c36cf4a9f04306be36aeb1ffe503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 175,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3cdacd1c7fad4d5ffa40ae54a1b6e36234a87e8d188d5b8df707a5f4cb50b56",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0f0af089805086e7cc9f4bb2faae8bd7b264f52a5e47da21a394e002c389ed3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reduction {y y' : ℕ} (hy : y ≤ y') : ZMod (Modulus y') →+* ZMod (Modulus y) :=
  ZMod.castHom (modulus_dvd_of_le hy) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variant79d0e1b71295a39ab1bec8cf678cdf769eb6e13ab914180fb095e39f19e80b2e.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34bf5987e231c36cf4a9f04306be36aeb1ffe503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
