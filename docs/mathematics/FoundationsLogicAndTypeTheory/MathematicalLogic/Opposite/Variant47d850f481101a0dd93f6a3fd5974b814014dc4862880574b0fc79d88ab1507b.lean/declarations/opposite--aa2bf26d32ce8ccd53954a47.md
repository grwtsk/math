# Opposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5fb9b11ebc9e9d09ec86d21af7744f560fdb8b9d35f39fa83166aba30cf45e0",
  "kind": "structure",
  "lexical_name": "Opposite",
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
  "slug": "opposite--aa2bf26d32ce8ccd53954a47",
  "source": {
    "blob": "3df9cdf371842cfe6d87c907d558cf6e71ce2718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa2bf26d32ce8ccd53954a47c36adeb8987c0c9db422c0882d4829a8efb87ee3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5fb9b11ebc9e9d09ec86d21af7744f560fdb8b9d35f39fa83166aba30cf45e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Opposite :=
  /-- The canonical map `αᵒᵖ → α`. -/
  unop : α
#align opposite Opposite
#align opposite.unop Opposite.unop

@[inherit_doc]
notation:max -- Use a high right binding power (like that of postfix ⁻¹) so that, for example,
-- `Presheaf Cᵒᵖ` parses as `Presheaf (Cᵒᵖ)` and not `(Presheaf C)ᵒᵖ`.
α "ᵒᵖ" => Opposite α

namespace Opposite

variable {α}

/-- The canonical map `α → αᵒᵖ`. -/
-- Porting note: pp_nodot has not been implemented.
--@[pp_nodot]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variant47d850f481101a0dd93f6a3fd5974b814014dc4862880574b0fc79d88ab1507b.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3df9cdf371842cfe6d87c907d558cf6e71ce2718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
