# Pi.instNatPowAssoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3460361ff19192f3ab008b8a7234b8429cdf1cfc0045d8bb47a83523cffa2262",
  "kind": "instance",
  "lexical_name": "Pi.instNatPowAssoc",
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
  "slug": "pi-instnatpowassoc--aefeda6f1562641c6b287f9f",
  "source": {
    "blob": "0de75eaf147d140d67b9daac08982117490cdf03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aefeda6f1562641c6b287f9f73097bd4a76a1424daa0f5face492ea47c49257e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3460361ff19192f3ab008b8a7234b8429cdf1cfc0045d8bb47a83523cffa2262`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.instNatPowAssoc {ι : Type*} {α : ι → Type*} [∀ i, MulOneClass <| α i] [∀ i, Pow (α i) ℕ]
    [∀ i, NatPowAssoc <| α i] : NatPowAssoc (∀ i, α i) where
    npow_add _ _ _ := by ext; simp [npow_add]
    npow_zero _ := by ext; simp
    npow_one _ := by ext; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NatPowAssoc/Variantd3c7b10bcc4d6343b9e998de4d8efa00528085be37699d770f4baced9dad5c66.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0de75eaf147d140d67b9daac08982117490cdf03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
