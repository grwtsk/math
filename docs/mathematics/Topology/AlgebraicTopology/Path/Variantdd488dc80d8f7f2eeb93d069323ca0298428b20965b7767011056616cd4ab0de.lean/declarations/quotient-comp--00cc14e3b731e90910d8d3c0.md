# Quotient.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e66fed709308f0c159814c48a84ebf3e95078350ed091d1fef151511220875f6",
  "kind": "def",
  "lexical_name": "Quotient.comp",
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
  "slug": "quotient-comp--00cc14e3b731e90910d8d3c0",
  "source": {
    "blob": "5976cd37dd850920ac6af9d2f64b1fdfd06b41d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 321,
    "path": "GRWTSK/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00cc14e3b731e90910d8d3c0497a8b7812c37dd0499dffe93ae7c795b0f26b6e",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e66fed709308f0c159814c48a84ebf3e95078350ed091d1fef151511220875f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Quotient.comp (P₀ : Path.Homotopic.Quotient x₀ x₁) (P₁ : Path.Homotopic.Quotient x₁ x₂) :
    Path.Homotopic.Quotient x₀ x₂ :=
  Quotient.map₂ Path.trans (fun (_ : Path x₀ x₁) _ hp (_ : Path x₁ x₂) _ hq => hcomp hp hq) P₀ P₁
#align path.homotopic.quotient.comp Path.Homotopic.Quotient.comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Path/Variantdd488dc80d8f7f2eeb93d069323ca0298428b20965b7767011056616cd4ab0de.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5976cd37dd850920ac6af9d2f64b1fdfd06b41d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
