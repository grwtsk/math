# smoothNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c7222bec2c97915c32a53ed81f276757c94dacd43784212c57dc0747290cb4a",
  "kind": "def",
  "lexical_name": "smoothNumbers",
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
  "slug": "smoothnumbers--733e63e8c0f5b20ffc52fcc3",
  "source": {
    "blob": "55b572da9af134d348000f30ae398a6dbcdcfd26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 274,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:733e63e8c0f5b20ffc52fcc32d1d58b06e6772921ab7587cbd04dd693e4cd172",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c7222bec2c97915c32a53ed81f276757c94dacd43784212c57dc0747290cb4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smoothNumbers (n : ℕ) : Set ℕ := {m | m ≠ 0 ∧ ∀ p ∈ primeFactorsList m, p < n}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SmoothNumbers/Variant8b4ebf56950275d9bb7023fe2ec78a0c56dea22e5546948ba004aea80cb1d73e.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55b572da9af134d348000f30ae398a6dbcdcfd26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
