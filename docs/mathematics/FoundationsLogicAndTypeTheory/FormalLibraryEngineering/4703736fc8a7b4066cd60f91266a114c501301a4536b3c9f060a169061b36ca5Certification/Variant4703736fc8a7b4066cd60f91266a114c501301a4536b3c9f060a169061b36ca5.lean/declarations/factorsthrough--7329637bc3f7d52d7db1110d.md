# FactorsThrough

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71cd9b47d0d0e40f62a1d083361bc300a1e20fd7c8fc132487ceed5b4f9c881c",
  "kind": "def",
  "lexical_name": "FactorsThrough",
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
  "slug": "factorsthrough--7329637bc3f7d52d7db1110d",
  "source": {
    "blob": "6360a1ada095605c3d6fe1d5208763975a78c2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5Certification/Variant4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7329637bc3f7d52d7db1110d545152790b334462c7551fa73c7ee85a08ed8d3c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5Certification/Variant4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71cd9b47d0d0e40f62a1d083361bc300a1e20fd7c8fc132487ceed5b4f9c881c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FactorsThrough (q : SufficientRepresentation.{u, v, w, a} C)
    (r : SufficientRepresentation.{u, v, w, b} C) : Prop :=
  ∃ f : r.carrier → q.carrier, q.compress = f ∘ r.compress

/-- A sufficient representation is minimal when it factors through every other
exact sufficient representation whose carrier lies in the independent universe `b`.
The declaration is universe-polymorphic in `b`; it does not quantify over all
universe levels inside a single proposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5Certification/Variant4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5Certification/Variant4703736fc8a7b4066cd60f91266a114c501301a4536b3c9f060a169061b36ca5.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6360a1ada095605c3d6fe1d5208763975a78c2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
