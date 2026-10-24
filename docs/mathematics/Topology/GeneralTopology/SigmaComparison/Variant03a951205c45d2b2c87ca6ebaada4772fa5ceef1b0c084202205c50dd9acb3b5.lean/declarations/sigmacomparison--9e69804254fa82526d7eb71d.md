# sigmaComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd6f5bcbbba5692fad39979332f3999139f96e0a713d9adc1a1178e0788e64fe",
  "kind": "def",
  "lexical_name": "sigmaComparison",
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
  "slug": "sigmacomparison--9e69804254fa82526d7eb71d",
  "source": {
    "blob": "2f06e8b1100c678a63a6f9aa3594b069f319b077",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e69804254fa82526d7eb71d74ba68f855c12c51097cc61b1a43232aa2dbe78c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd6f5bcbbba5692fad39979332f3999139f96e0a713d9adc1a1178e0788e64fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sigmaComparison : X.obj ⟨(of P ((a : α) × σ a))⟩ ⟶ ((a : α) → X.obj ⟨of P (σ a)⟩) :=
  fun x a ↦ X.map (ofHom _ ⟨Sigma.mk a, continuous_sigmaMk⟩).op x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f06e8b1100c678a63a6f9aa3594b069f319b077` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
