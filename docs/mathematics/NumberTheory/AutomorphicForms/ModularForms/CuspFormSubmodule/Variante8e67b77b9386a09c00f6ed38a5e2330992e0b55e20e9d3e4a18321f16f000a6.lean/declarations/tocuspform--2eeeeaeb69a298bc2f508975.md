# toCuspForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5e07d3f8ba003e135faca3599c6c798b3fc0c600daf7993d8cfb1782e318720",
  "kind": "def",
  "lexical_name": "toCuspForm",
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
  "slug": "tocuspform--2eeeeaeb69a298bc2f508975",
  "source": {
    "blob": "77754e63c0c24a90f2de6fd7294bf77059119b4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 133,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2eeeeaeb69a298bc2f50897557532c20946934b1f6596faaaef384dfb92274ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5e07d3f8ba003e135faca3599c6c798b3fc0c600daf7993d8cfb1782e318720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCuspForm (f : ModularForm 𝒮ℒ k) (h : (qExpansion 1 f).coeff 0 = 0) : CuspForm 𝒮ℒ k :=
  { f with zero_at_cusps' := isZeroAt_of_coeffZero_eq_zero f h }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77754e63c0c24a90f2de6fd7294bf77059119b4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
