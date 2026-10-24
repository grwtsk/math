# PolarizedInteractionControl.IsExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f90c76eb5700229d76a11cbcc93eb95b65ddc7ec78817b4ba85b124a307629d",
  "kind": "def",
  "lexical_name": "PolarizedInteractionControl.IsExact",
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
  "slug": "polarizedinteractioncontrol-isexact--95ae5e42f8940570c51a0e72",
  "source": {
    "blob": "141db213772536431a9e2507329c18ec6c9736c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 68,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variantb657f92fd9093384fcb945439ad77fd597e1784c84ee4cb7576a56307692670c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95ae5e42f8940570c51a0e72dcecab3eb1901479f89787f77f46e140c25aef3f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PolarizedGram/Variantb657f92fd9093384fcb945439ad77fd597e1784c84ee4cb7576a56307692670c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f90c76eb5700229d76a11cbcc93eb95b65ddc7ec78817b4ba85b124a307629d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PolarizedInteractionControl.IsExact {N : ℕ}
    {frame : ConductorThreeCoefficientPacketFrame N}
    (control : PolarizedInteractionControl frame) : Prop :=
  control.offDiagonalError = 0

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PolarizedGram/Variantb657f92fd9093384fcb945439ad77fd597e1784c84ee4cb7576a56307692670c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PolarizedGram/Variantb657f92fd9093384fcb945439ad77fd597e1784c84ee4cb7576a56307692670c.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `141db213772536431a9e2507329c18ec6c9736c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
